/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
Project: Industrial vacuum cleaner
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#include "Main.h"
#include "Port.h"
#include "Display.h"
#include "VC.h"
#include "SW.h"
#include "Timer.h"
#include "Timer_delay.h"
/*System clock*/
#define _XTAL_FREQ 8000000UL
/*PIC MCU fuse bits*/
tWord __at(0x2007) CONFIG = _HS_OSC & _WDT_OFF & _PWRTE_ON & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _WRT_OFF & _DEBUG_OFF & _CP_OFF;

/* ////////////////////////////////////////////////////////////////////////////////////

The vacuum cleaner has 3 speeds it starts with stop speed which at angle 170
then it soft switches to minimum speed which at angle 140 which it is the starting
speed in the vacuum.

The vacuum has three switches:
First one to speed up the speed of the motor until it reaches the maximum speed
which at angle 10.

The second switch is used to slow down the speed of the motor until it reaches
the minimum speed.
Both switches pass through medium speed which at angle 90.

The third switch it's a digital pressure sensor which is used to sense the capacity
of vacuum cleaner tank and if it is pressed for 30 seconds it slows down the speed
of the motor until it reaches the minimum speed , and when it is pressed it turn on
red led.

The vacuum cleaner has three ones of seven segment display:
The first one it has one dash which it indicates the current speed it is the
minimum one.

The second one it has two dashes which it indicates the current speed it is the
medium one.

The third one it has three dashes which it indicates the current speed it is the
maximum one.

The motor of VC has startup delay stays at a speed point until it is stable and then
shifts into the next level. Finally, the motor will reach the lowest power level of
the vacuum cleaner.

The motor has soft switching algorithm which will move an angel every 40 ms to avoid
hard switch of the motor.
By switching the speed, the soft switch scheme will prevent the current from changing
dramatically. If the desired speed is faster or slower than current speed for more than
one-step span, the software will get to the desired speed step by step and manage to
smoothen the speed switching. Each step will hold on for an (update rate) period to
stabilize the current and then move to next speed level.

Harmonic suppression is done by applying the KURZ phase control method,. This method
modulates the universal motor current with one long phase trigger full wave and one
short phase trigger full wave.

///////////////////////////////////////////////////////////////////////////////////// */


void main(void)
{
    /*Initialize Timer*/
    TMR_Init();
    /*Initialize VC*/
    VC_Init();
    /*Initialize Display*/
    DISP_Init();
    /*Start Timer*/
    TMR_Start();
    /*Initialize VC SWs*/
    SW_Init();
    /*Initialize Delay timer*/
    Delay_Init();

    while(1)
    {
    }
}
