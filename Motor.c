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
#define MOTOR_PERIOD_MS               (10)
#define HARMONIC_PERIOD_MS            (20)
#define KURZ_DELTA                    (5)
#define MOTOR_SOFT_SWitCH_PERIOD_MS   (40)

/*Pulse delay in ms*/
#define MIN_TON_MS                    (8)
#define MED_TON_MS                    (5)
#define MAX_TON_MS                    (1)
#define STOP_TON_MS                   (9)

/*pulse delay in us divided by 100*/
#define FULL_WAVE_Delay               (100)
#define MAX_Delay                     (10)
#define MED_Delay                     (50)
#define MIN_Delay                     (80)
#define STOP_Delay                    (90)

/*Local functions prototype*/
static void Motor_Sequence(tByte Changing_Flag,tVC_Speed Speed_TWO);
static tByte Motor_CMPSpeed(tVC_Speed Speed_ONE,tVC_Speed Speed_TWO);
static void Motor_Out(tMotor Motor);
static void Motor_Stop(tMotor Motor);
static void Motor_MinSpeed(void);
static void Motor_MedSpeed(void);
static void Motor_MaxSpeed(void);
static void Motor_StopSpeed(void);




/* local variable used to indicates the current angel upon TON of the motor*/
static tMotor_Angel Angel=Angel_IDLE;
/*Local variable as flag to continue the current soft switching*/
static tWord Resume_Switch=1;

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
static void Motor_Stop(tMotor Motor)
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
static void Motor_Out(tMotor Motor)
{
    Motor_SetState(Motor,Motor_ON,Motor_ClockWise);
}

/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////
Function: Motor_FirePulse
Parameters: Motor from type structure tMotor
return: void
function job: specific function to the application turns on motor for 100 us
///////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
static void Motor_FirePulse(tMotor Motor)
{
    Motor_Out(Motor);
    TMR_Delay_100US(1);
    Motor_Stop(Motor);
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
/* ///////////////////////////////////////////////////////////////////////////////////////////////////////////
                                      Motor Speed functions
1-Function: Motor_MinSpeed
2-Function: Motor_MedSpeed
3-Function: Motor_MaxSpeed
4-Function: Motor_StopSpeed

Parameters: void
return: void
function job: Fire motor pulse according to its current speed
///////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
static void Motor_MinSpeed(void)
{
	TMR_Delay_MS(MIN_TON_MS);
	Motor_FirePulse(Motor_1);

}
static void Motor_MedSpeed(void)
{
	TMR_Delay_MS(MED_TON_MS);
	Motor_FirePulse(Motor_1);

}
static void Motor_MaxSpeed(void)
{
	TMR_Delay_MS(MAX_TON_MS);
	Motor_FirePulse(Motor_1);

}
static void Motor_StopSpeed(void)
{
	TMR_Delay_MS(STOP_TON_MS);
	Motor_FirePulse(Motor_1);

}



/* ////////////////////////////////////////////////////////////////////////////////////////
Function:   Motor_Sequence
Parameters: void
Return:     void
job:
     1-Check if there is change in VC speed if there one
         -Start soft switching from the current speed to the target speed, every 40 ms will
         increase the pulse an angle until it reaches the the required angle.
     2-If there is n't  change in VC speed
         -Run the motor with its current angel.
///////////////////////////////////////////////////////////////////////////////////////// */
static void Motor_Sequence(tByte Changing_Flag,tVC_Speed Speed_TWO)
{
    /*Flag indicates if shifting to target speed has completed*/
    static tByte Change_StateFlag=0;
    /*Counter to indicate if the time of soft switch delay has met*/
    static tWord SoftSwitch_Counter=0;
    /*Start delay as full wave 10 ms*/
    static tByte Start_Delay=FULL_WAVE_Delay;
/*Force the soft switching state if the two speeds are not the same*/
    if(Changing_Flag!=1){Resume_Switch=1;}
/*If the two speeds are different or the target angel is not been reached yet
  it starts the soft switch sequence                                         */
    if(Changing_Flag!=1 ||Resume_Switch==1)
    {
        SoftSwitch_Counter += MOTOR_PERIOD_MS;
    /*To move 1 angle it take 40 ms so to move 30 angle it takes 1200 ms and sub TON */
       if(SoftSwitch_Counter!= MOTOR_SOFT_SWitCH_PERIOD_MS)
         {
          return;
         }
         /*Assign zero to the counter*/
         SoftSwitch_Counter=0;
        /*Minimum speed soft switching state*/
        if(Speed_TWO==VC_MIN_Speed)
        {
            /*terminate soft switching if it reaches the assigned time*/
            if(Start_Delay==MIN_Delay)
            {
                Resume_Switch=0;
                Change_StateFlag=1;
            }
            else
            {
            /*Continue the soft switching*/
            Resume_Switch=1;
            Change_StateFlag=0;

            if(Start_Delay>MIN_Delay)
            {
                Start_Delay-=1;
            }
            else if(Start_Delay<MIN_Delay)
            {
                Start_Delay+=1;

            }
            }

        }
        /*End of Minimum speed state*/
/* ////////////////////////////////////////// */

        /*minimum speed soft switching*/
        if(Speed_TWO==VC_MED_Speed)
        {
             /*terminate soft switching if it reaches the assigned time*/
            if(Start_Delay==MED_Delay)
            {
                Resume_Switch=0;
                Change_StateFlag=1;
            }
            else
            {
            /*Continue the soft switching*/
            Resume_Switch=1;
            Change_StateFlag=0;

              if(Start_Delay>MED_Delay)
              {
                Start_Delay-=1;
              }
              else if(Start_Delay<MED_Delay)
              {
                Start_Delay+=1;
              }

            }

        }
        /*End of Medium speed state*/
/* ////////////////////////////////////////// */

        /*Maximum speed soft switching*/
        if(Speed_TWO==VC_MAX_Speed)
        {
           /*terminate soft switching if it reaches the assigned time*/
            if(Start_Delay==MAX_Delay)
            {
                Resume_Switch=0;
                Change_StateFlag=1;
            }
            else
            {
            /*Continue the soft switching*/
              Resume_Switch=1;
              Change_StateFlag=0;

              if(Start_Delay>MAX_Delay)
              {
                Start_Delay-=1;
              }
              else if(Start_Delay<MAX_Delay)
              {
                Start_Delay+=1;
              }

            }
        }

        /*End of Maximum speed state*/
/* ////////////////////////////////////////// */

/*Every 40 milliseconds will change start delay
  Motor pulse is 100 micro seconds so the angle is considered as 100 US
  by this method the angle 90 will be reached from angle 180(before Turning on the VC)
  in 3600 ms
                                                                        */
        TMR_Delay_100US(Start_Delay);
        Motor_FirePulse(Motor_1);
        /*terminate the task after pulse*/
        return;
    }

/* ////////////////////////////////////////////////////////////////////////////////////////
   If the last speed and the current speed are the same stay on the same TON
/////////////////////////////////////////////////////////////////////////////////////// */
/*Check if the TON has been reached & the Two speeds are equal*/
   else if(Changing_Flag==1 && Change_StateFlag==1)
    {
        if(Speed_TWO==VC_MIN_Speed)
        {
        Motor_MinSpeed();
        /*To move from angle 170 to 140*/
        Angel=Angel_MIN;
        }

    /*Medium speed*/
        else if(Speed_TWO==VC_MED_Speed)
        {
        /*To move from angle 140 to 90*/
        Motor_MedSpeed();
        Angel=Angel_MED;
        }

    /*Maximum speed*/
        else if(Speed_TWO==VC_MAX_Speed)
        {
        /*To move to angle 10*/
        Motor_MaxSpeed();
        Angel=Angel_MAX;

        }
        else
        {
        Motor_StopSpeed();
        Angel=Angel_STOP;
        }
    }
}

/* ////////////////////////////////////////////////////////////////////////////////////////
Function:   Motor_GetAngel
Parameters: void
Return:     Values from type enum tMotor_Angel
job: checks TON of the motor and returns the current speed of the motor
///////////////////////////////////////////////////////////////////////////////////////// */
tMotor_Angel Motor_GetAngel(void)
{
    return Angel;
}

/*the current VC speed*/
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
    static tWord Motor_Firing_Counter=0;
    static tWord Motor_Harmonic_counter=0;
    static tByte HarmonicFlag=0;
    static tVC_Speed VC_LocalCur_Speed=VC_STOP;


/* /////////////////////////////////////////////////////////////////////////////////////
                         Applying Kurz industrial solution
///////////////////////////////////////////////////////////////////////////////////// */

    /*Increase Motor firing counter(*/
    Motor_Firing_Counter += TMR_TICK_MS;
    /* Increase Harmonic counter until it meets Harmonic period*/
    Motor_Harmonic_counter += TMR_TICK_MS;
    /*Check if the counter is 0 and period is the same*/
if(HarmonicFlag==0)
{
     if(Motor_Firing_Counter != MOTOR_PERIOD_MS)
     {
        return;
     }
     Motor_Firing_Counter=0;
}
    /*Check if the counter and period is
      increased by Kurz delta           */
if(HarmonicFlag==1)
{
    if(Motor_Firing_Counter != MOTOR_PERIOD_MS+KURZ_DELTA)
     {
        return;
     }
     Motor_Firing_Counter=0;
     HarmonicFlag=0;
}

/* //////////////////////////////////////////////////////////////////// */

     /* If it passed HARMONIC_PERIOD_MS, increase the Firing
        counter in the next tick by Kurz delta              */
     if(Motor_Harmonic_counter != HARMONIC_PERIOD_MS)
     {

     }
     else
     {
        Motor_Harmonic_counter=0;
        /*When it passes Harmonic period 20 ms*/
        HarmonicFlag=1;
        Motor_Firing_Counter += KURZ_DELTA;
     }

/* ////////////////////////////////////////////////////////////////////////////// */

   /*Compare between new speeds*/
   /*Initial speed is medium speed*/
   if(VC_Cur_Speed==VC_STOP)
    {
    VC_LocalCur_Speed=VC_STOP;
    VC_Cur_Speed=VC_MED_Speed;
    }


   /*Fire the motor*/
    Motor_Sequence(
                  /*Check if the new speed is the same as current
                    speed or not                                 */
                   Motor_CMPSpeed(VC_Cur_Speed,VC_LocalCur_Speed)
                  /*Apply the new speed to the motor*/
                  ,VC_Cur_Speed
                 );
   /*Assign the last speed as the local current speed of VC to be compared the next tick*/
   VC_LocalCur_Speed=VC_GetSpeed();
}
