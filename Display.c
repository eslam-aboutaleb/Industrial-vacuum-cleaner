/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
File: Display.c
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#include "Main.h"
#include "SSD.h"
#include "Timer.h"
#include "Display.h"
#include "SW.h"
#include "Led.h"
#include "VC.h"

/* SSD_Update period */
#define DISP_PERIOD_MS   (20)

/* /////////////////////////////////////////////////////////////////////////////////
Func: DISP_Init
Parameters: void
Return: void
job: initializes Pressure LED and SSDs which indicate the speed of VC
///////////////////////////////////////////////////////////////////////////////// */
void DISP_Init(void)
{
        /*initialize SSD*/
        SSD_Init(SSD_MIN);
        SSD_Init(SSD_MED);
        SSD_Init(SSD_MAX);
        /*Set initial values*/
        SSD_SetValue(SSD_MIN,SSD_1_dash);
        SSD_SetValue(SSD_MED,SSD_NULL);
        SSD_SetValue(SSD_MAX, SSD_NULL);

        /*Initialize LED*/
        LED_Init(LED_1,LED_OFF);
}

extern tVC_Speed VC_Cur_Speed;

/* /////////////////////////////////////////////////////////////////////////////////
Func: DISP_Update
Parameters: void
Return: void
job: Updates the status of Display devices:
    1- if the speed is minimum one dash will be displayed on first SSD
    2- if the speed is medium two dashes will be displayed  on second SSD
    3- if the speed is maximum three dashes will be displayed  on third SSD
    4- if Pressure button (D-Button) is pressed the LED will turn on
///////////////////////////////////////////////////////////////////////////////// */
void DISP_Update(void)
{
    static tWord DISP_counter = 0;


    /* Check if it is time for the DISP_Update to run */
    DISP_counter += TMR_TICK_MS;

    if(DISP_counter != DISP_PERIOD_MS)
    {
        return;
    }
    DISP_counter = 0;

    /*Turm ON LED if switch D is pressed*/
   if(SW_GetState(SW_D)==SW_PRESSED)
    {
      LED_SetState(LED_1,LED_ON);
    }
    else
    {
      LED_SetState(LED_1,LED_OFF);
    }

    /*Check VC speed Level*/
    /*Low speed*/
    if((VC_Cur_Speed==VC_MIN_Speed)||(VC_Cur_Speed==VC_STOP))
    {
        SSD_SetValue(SSD_MIN,SSD_1_dash);
        SSD_SetValue(SSD_MED,SSD_NULL);
        SSD_SetValue(SSD_MAX, SSD_NULL);

    }
    /*Medium speed*/
    else if(VC_Cur_Speed==VC_MED_Speed)
    {
        SSD_SetValue(SSD_MIN,SSD_1_dash);
        SSD_SetValue(SSD_MED,SSD_2_dashes);
        SSD_SetValue(SSD_MAX, SSD_NULL);
    }
    else if(VC_Cur_Speed==VC_MAX_Speed)
    {
        SSD_SetValue(SSD_MIN,SSD_1_dash);
        SSD_SetValue(SSD_MED,SSD_2_dashes);
        SSD_SetValue(SSD_MAX, SSD_3_dashes);
    }
    else
    {
        /*No Action*/
    }
}

