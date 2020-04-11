/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
File: VC.c
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#include "VC.h"
#include "Motor.h"
#include "SW.h"
#include "Main.h"
#include "Timer.h"

#define VC_PERIOD_MS    (20)
#define D_PRESS_TIME_MS (30000)

/*Initialize VC speed as stopped at angle 170*/
/*Global variable is used in multiple files to detect current VC speed*/
tVC_Speed VC_Cur_Speed=VC_STOP;


/* ////////////////////////////////////////////////////////////////////////////////////
Function:VC_Init
Parameters:void
Return:void
Job:Initialize Motor and SWs
//////////////////////////////////////////////////////////////////////////////////// */
void VC_Init(void)
{
    /*Initialize VC motor*/
    Motor_Init(Motor_1);

}

/* ////////////////////////////////////////////////////////////////////////////////////
Function:VC_GetSpeed
Parameters:void
Return:struct from type tVC_Speed
Job:Read the current VC speed
//////////////////////////////////////////////////////////////////////////////////// */
tVC_Speed VC_GetSpeed(void)
{
    return VC_Cur_Speed;
}

/* ////////////////////////////////////////////////////////////////////////////////////
Function:VC_Update
Parameters:void
Return:void
Job:Check the SWs state and increase and decrease VC speed based on actions
//////////////////////////////////////////////////////////////////////////////////// */
void VC_Update(void)
{
    static tWord VC_Counter=0;
    static tWord D_SW_Counter=0;

    VC_Counter += TMR_TICK_MS;
    /* Check if it is time for the VC_Update to run */
    if(VC_Counter != VC_PERIOD_MS)
    {
        return;
    }
    VC_Counter=0;


         /* if SW_PLUS has been pressed it increases the speed of VC*/
            if(SW_GetState(SW_PLUS)==SW_PRE_PRESSED)
            {
                if(VC_Cur_Speed<VC_MAX_Speed)
                {
                    VC_Cur_Speed++;
                }
                else
                {
                    /*No Action*/
                }
            }
            else
            {
                /*No Action*/
            }

         /* if SW_MINUS has been pressed it decreases the speed of VC*/
            if(SW_GetState(SW_MINUS)==SW_PRE_PRESSED)
            {
                if(VC_Cur_Speed>VC_MIN_Speed)
                {
                    VC_Cur_Speed--;
                }
                else
                {
                    /*No Action*/
                }
            }
            else
            {
                /*No Action*/
            }
        /* if SW_D has been pressed it decreases the speed of VC after being pressed for 30 secs*/
            if(SW_GetState(SW_D)==SW_PRESSED)
            {
                D_SW_Counter+=VC_PERIOD_MS;

                /*If D SW has been pressed for 30 seconds slow down the VC speed*/
                if(D_SW_Counter==D_PRESS_TIME_MS)
                {
                    D_SW_Counter=0;
                    if(VC_Cur_Speed>VC_MIN_Speed)
                     {
                      VC_Cur_Speed--;
                     }
                    else
                     {
                      /*No Action*/
                     }
                }
                else
                {
                    /*No Action*/
                }
            }
            /*No button is pressed*/
            else
            {
                /*No Action*/
            }


    }

