/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
File: Motor.c
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#include "Main.h"
#include "Port.h"
#include "Timer.h"
#include "Motor.h"
#include "VC.h"
#include "Timer_delay.h"

/*Time macros used in the module*/
#define MOTOR_PERIOD_MS              (10)
#define HARMONIC_PERIOD_MS           (10)
#define KURZ_DELTA                   (5)
#define MOTOR_SOFT_SWitCH_PERIOD_MS  (40)
#define TON_MIN                      (3)
#define TON_MED                      (5)
#define TON_MAX                      (9)


/*Local functions prototype*/
static void Motor_Sequence(tByte Changing_Flag,tVC_Speed Speed_TWO);
static tByte Motor_CMPSpeed(tVC_Speed Speed_ONE,tVC_Speed Speed_TWO);

/* local variable used to indicates the current angel upon TON of the motor*/
static tWord Angel=0;
/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////
Function: Motor_Init
Parameters: Motor from type structure tMotor
return: void
function job: Initialize Motor pins & first state & direction
///////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
void Motor_Init(tMotor Motor)
{
    /* Initialize Motor pins*/
    switch(Motor)
    {
    case Motor_1:
        GPIO_InitPortPin(MOTOR_1_PORT_CR,MOTOR_1_POLARITY_PIN_POSITIVE,GPIO_OUT);

        #ifdef MOTOR_1_BI_DIRECTION
        GPIO_InitPortPin(MOTOR_1_PORT_CR,MOTOR_1_POLARITY_PIN_NEGATIVE,GPIO_OUT);
        #endif // MOTOR_1_BI_DIRECTION

        break;

    default:
        /* No Action*/
        break;
    }

    /*set Motor OFF*/
    Motor_SetState(Motor,Motor_OFF,Motor_Stopped);
}

/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////
Function: Motor_Setstate
Parameters: Motor from type struct tMotor,State form type struct tMotor_State, Direction from type struct
tMotor_Direction
return: void
function job: Set Motor state & direction
///////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
void Motor_SetState(tMotor Motor,tMotor_State State,tMotor_Direction Direction)
{
    switch(Motor)
    {
   case Motor_1:
       /*Check if it is Clock wise*/
       if(Direction==Motor_ClockWise)
       {
           /*Check if state is on*/
           if(State==Motor_ON)
            {
            GPIO_WritePortPin(MOTOR_1_PORT_DR,MOTOR_1_POLARITY_PIN_POSITIVE,State);

            #ifdef MOTOR_1_BI_DIRECTION
            GPIO_WritePortPin(MOTOR_1_PORT_DR,MOTOR_1_POLARITY_PIN_NEGATIVE,0);
            #endif // MOTOR_1_BI_DIRECTION

            }
            /*Motor State is off*/
           else
            {
                Motor_Stop(Motor_1);
            }
       }

       /*Check if it is Anti Clock wise*/
       #ifdef MOTOR_1_BI_DIRECTION
       else if (Direction==Motor_AntiClockWise)
       {
        if(State==Motor_ON)
         {
        GPIO_WritePortPin(MOTOR_1_PORT_DR,MOTOR_1_POLARITY_PIN_POSITIVE,0);
        GPIO_WritePortPin(MOTOR_1_PORT_DR,MOTOR_1_POLARITY_PIN_NEGATIVE,State);
         }
         /*Motor State is off*/
        else
         {
             Motor_Stop(Motor);
         }
       }
       #endif // MOTOR_1_BI_DIRECTION

       /*Check if the Motor is n't moving any direction*/
       else if (Direction==Motor_Stopped)
       {
           /*Motor State is off*/
            Motor_Stop(Motor);
       }

       else
       {
           /* No Action */
       }
    break;

   default:
       /* No Action */
    break;

    }
}

/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////
Function: Motor_GetState
Parameters: Motor from type structure tMotor
return: struct tMotor_Info
function job: Read motor state & direction
///////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
tMotor_Info * Motor_GetState(tMotor Motor)
{
    tMotor_Info *Motor_ConfigType=NULL;
    /*Initialize Motor info*/
    Motor_ConfigType->State=Motor_OFF;
    Motor_ConfigType->Direction=Motor_Stopped;

    switch(Motor)
    {
    case Motor_1:
        /*Check for Clock wise direction*/
        Motor_ConfigType->State=GPIO_ReadPortPin(MOTOR_1_PORT_CR,MOTOR_1_POLARITY_PIN_POSITIVE);
        if(Motor_ConfigType->State==Motor_ON)
            {
               Motor_ConfigType->Direction=Motor_ClockWise;
            }
         else
            {
                /* No Action*/
            }

        /*Check for Clock Anti wise direction*/
        #ifdef MOTOR_1_BI_DIRECTION
        Motor_ConfigType->State=GPIO_ReadPortPin(MOTOR_1_PORT_CR,MOTOR_1_POLARITY_PIN_NEGATIVE);
        if(Motor_ConfigType->State==Motor_ON)
            {
               Motor_ConfigType->Direction=Motor_AntiClockWise;
            }
         else
            {
                /* No Action*/
            }

         #endif // MOTOR_1_BI_DIRECTION

        /*If Motor state is off*/
        if(Motor_ConfigType->State==Motor_OFF)
           {
           /*Return the initialized states at first of function*/
           }
        else
            {
                /* No Action*/
            }

        break;

    default:
        /* No Action*/
        break;

    }
    /*End of Switch*/
            return Motor_ConfigType;

}

/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////
Function: Motor_Stop
Parameters: Motor from type structure tMotor
return: void
function job: Stop Motor
///////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
void Motor_Stop(tMotor Motor)
{
    switch (Motor)
    {
      case Motor_1:

      GPIO_WritePortPin(MOTOR_1_PORT_DR,MOTOR_1_POLARITY_PIN_POSITIVE,0);

      #ifdef MOTOR_1_BI_DIRECTION
       GPIO_WritePortPin(MOTOR_1_PORT_DR,MOTOR_1_POLARITY_PIN_NEGATIVE,0);
      #endif // MOTOR_1_BI_DIRECTION
    break;


    default:
        break;
    }

}

/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////
Function: Motor_Out
Parameters: Motor from type structure tMotor
return: void
function job: Start the motor in clockwise direction
///////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
void Motor_Out(tMotor Motor)
{
    Motor_SetState(Motor,Motor_ON,Motor_ClockWise);
}

/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////
Function: Motor_CMPSpeed
Parameters: Speed_ONE & Speed_TWO from type enum tVC_Speed
return: tByte
function job:Compare between two desired speeds from type enum tVC_Speed
///////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
static tByte Motor_CMPSpeed(tVC_Speed Speed_ONE,tVC_Speed Speed_TWO)
{
    if(Speed_ONE==Speed_TWO)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

/* ////////////////////////////////////////////////////////////////////////////////////////
Function:   Motor_Sequence
Parameters: void
Return:     void
job:
     1-Check if there is change in VC speed if there one
         -Start soft switching from the current speed to the target speed, every 40 ms will
         increase the pulse an angle until it reaches the the right angle.
     2-If there is n't  change in VC speed
         -Run the motor with its current ON time.
///////////////////////////////////////////////////////////////////////////////////////// */
static void Motor_Sequence(tByte Changing_Flag,tVC_Speed Speed_TWO)
{
    static tWord TON=0;
    /*Flag indicates if shifting to target speed has completed*/
    static tByte Change_StateFlag=0;
    /* Flag indicates the required TON has not reached yet*/
    static Resume_Switch=0;
    /*Counter to indicate if the time of soft switch delay has met*/
    static tByte SoftSwitch_Counter=0;
    /*Counter used to move the angle of the motor gradually*/
    static ShiftAngleCounter=0;

/* /////////////////////////////////////////////////////////////////////////////////////// */
/*If the two speeds are different or the target angel is not been reached yet
  it starts the soft switch sequence                                         */
    if(Changing_Flag!=1 || Resume_Switch==1)
    {
        SoftSwitch_Counter += MOTOR_PERIOD_MS;
    /*To move 1 angle it take 40 ms so to move 30 angle it takes 1200 ms and sub TON */
    if(SoftSwitch_Counter==MOTOR_SOFT_SWitCH_PERIOD_MS)
    {
        return;
    }
        SoftSwitch_Counter=0;
/* /////////////////////////////////////////////////////////////////////////////////////////////// */
                                        /*Minimum speed State*/
/* /////////////////////////////////////////////////////////////////////////////////////////////// */
    if(Speed_TWO==VC_MIN_Speed)
    {
            if(TON==TON_MIN)
            {
                Resume_Switch=0;
                Change_StateFlag=1;
            }
        else
        {
            /*Increase ShiftAngleCounter by 1 */
            ShiftAngleCounter+=1;
            /*Continue the condition*/
            Resume_Switch=1;
            Change_StateFlag=0;
            /*Every 40 MS ShiftAngleCounter will be increased by 1 until it reaches
              10 Counts to soft switch to angle 10 after 400 ms                 */
            if(ShiftAngleCounter==10)
            {
            ShiftAngleCounter=0;
             if(TON<TON_MIN)
             {
                TON++;
             }
             else if(TON>TON_MIN)
             {
                TON--;
             }
            }
        }
        /*To move from angle 170 to 140*/
    }

/* /////////////////////////////////////////////////////////////////////////////////////////////// */
                                        /*Medium speed State*/
/* /////////////////////////////////////////////////////////////////////////////////////////////// */
    if(Speed_TWO==VC_MED_Speed)
    {
        /*To move from angle 140 to 90*/
            if(TON==TON_MED)
            {
                Resume_Switch=0;
                Change_StateFlag=1;
            }
        else
        {
            ShiftAngleCounter+=1;
            Resume_Switch=1;
            Change_StateFlag=0;
            /*Every 40 MS ShiftAngleCounter will be increased by 1 until it reaches
              50 Counts to soft switch to angle 10 after 2000 ms                 */
             if(ShiftAngleCounter==50)
            {
             ShiftAngleCounter=0;
             if(TON<TON_MED)
             {
                TON++;
             }
             else if(TON>TON_MED)
             {
                TON--;
             }
            }
        }
    }

/* /////////////////////////////////////////////////////////////////////////////////////////////// */
                                        /*Maximum speed State*/
/* /////////////////////////////////////////////////////////////////////////////////////////////// */
    else if(Speed_TWO==VC_MAX_Speed)
    {
        /*To move from angle 140 to 10*/
            if(TON==TON_MAX)
            {
                Resume_Switch=0;
                Change_StateFlag=1;
            }
        else
        {
            ShiftAngleCounter+=1;
            Resume_Switch=1;
            Change_StateFlag=0;
            /*Every 40 MS ShiftAngleCounter will be increased by 1 until it reaches
              80 Counts to soft switch to angle 10 after 3200 ms                 */
            if(ShiftAngleCounter==80)
            {
              ShiftAngleCounter=0;
              if(TON<TON_MAX)
              {
                TON++;
              }
              else if(TON>TON_MAX)
             {
                TON--;
             }
            }
        }
    }

        Motor_Out(Motor_1);
        TMR_Delay_MS(TON);
        Motor_Stop(Motor_1);
        return;
}
/*End of Non-equal speed condition*/

/*Check if the TON has been reached & the Two speeds are equal*/
    else if(Changing_Flag==1 && Change_StateFlag==1)
    {
        if(Speed_TWO==VC_MIN_Speed)
        {
        TON=TON_MIN;
        /*To move from angle 170 to 140*/
        }

    /*Medium speed*/
    else if(Speed_TWO==VC_MED_Speed)
    {
        /*To move from angle 140 to 90*/
        TON=TON_MED;
    }

    /*Maximum speed*/
    else if(Speed_TWO==VC_MAX_Speed)
    {
        TON=TON_MAX;

    }

    }
    Angel=TON;
        Motor_Out(Motor_1);
        TMR_Delay_MS(TON);
        Motor_Stop(Motor_1);
}

/* ////////////////////////////////////////////////////////////////////////////////////////
Function:   Motor_GetAngel
Parameters: void
Return:     Values from type enum tMotor_Angel
job: checks TON of the motor and returns the current speed of the motor
///////////////////////////////////////////////////////////////////////////////////////// */
tMotor_Angel Motor_GetAngel(void)
{
    if(Angel<TON_MIN)
    {
        return Angel_170;
    }
    else if(Angel==TON_MIN || (Angel<TON_MED&&Angel>TON_MED))
    {
        return Angel_140;
    }
    else if(Angel==TON_MED || (Angel>TON_MIN&&Angel<TON_MAX))
    {
        return Angel_90;
    }
    else if(Angel==TON_MAX)
    {
        return Angel_10;
    }
    else
    {
        /*No Action*/
    }
    return 0;
}

extern tVC_Speed VC_Cur_Speed;
/* ////////////////////////////////////////////////////////////////////////////////////////
Function:   Motor_Update
Parameters: void
Return:     void

job: 1-Motor_Update should be called every 10 ms
     2-As a SW solution for harmonic reduction:
       I.Increase Counter & Target time five and decrease it again (Kurz solution)
     3-Apply soft start to the motor to increase motor lifetime should be move 1 angle every 40 ms
///////////////////////////////////////////////////////////////////////////////////////// */
void Motor_Update(void)
{
    static tWord Motor_Harmonic_counter=0;
    static tByte HarmonicFlag=0;
    static tVC_Speed VC_LocalCur_Speed=VC_STOP;


/* /////////////////////////////////////////////////////////////////////////////////////
                         Applying Kurz industrial solution
///////////////////////////////////////////////////////////////////////////////////// */
    Motor_Harmonic_counter += TMR_TICK_MS;
    /* Check if is it time for the Motor_Update to run */
    if(HarmonicFlag==0)
   {
    if(Motor_Harmonic_counter != HARMONIC_PERIOD_MS)
    {
        return;
    }
    else
    {
        HarmonicFlag=1;
    }
   }

    /*To apply Kurz method increase counter & period by 5 */
    if(HarmonicFlag==1)
   {
       Motor_Harmonic_counter +=  KURZ_DELTA;
    if(Motor_Harmonic_counter != (HARMONIC_PERIOD_MS+KURZ_DELTA))
    {
        return;
    }
    else
    {
        HarmonicFlag=0;
    }
   }

   /*Clear the counter*/
   Motor_Harmonic_counter=0;

/* ////////////////////////////////////////////////////////////////////////////// */

   /*Compare between new speeds*/

   if(VC_Cur_Speed==VC_STOP)
    {
    VC_LocalCur_Speed=VC_STOP;
    VC_Cur_Speed=VC_MIN_Speed;
    }

   /*Fire the motor*/
   Motor_Sequence(
                   Motor_CMPSpeed(VC_Cur_Speed,VC_LocalCur_Speed)
                  ,VC_Cur_Speed
                 );
   /*Assign the last speed as the current speed of VC*/
   VC_LocalCur_Speed=VC_GetSpeed();
}
