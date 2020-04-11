/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
File: Timer.c
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#include "Main.h"
#include "Timer.h"
#include "SW.h"
#include "Display.h"
#include "SSD.h"
#include "Motor.h"
#include "VC.h"

static void FirstTurnON(void);
static void Normal_RunTime(void);
static void ZCD_SimulatorInit(void);
static void ZCD_SimulatorStart(void);

/* /////////////////////////////////////////////////////////////////////////////////
Func: TMR_Init
Parameters: void
Return: void
job: Initialize timer0 in PIC MCU at prescaler 256
///////////////////////////////////////////////////////////////////////////////// */
void TMR_Init(void)
{
	TMR_SET_PRESCALER_256;
	TMR_DISABLE_CLOCK;
	/*Dummy pulse to simulate the ZCD module*/
	ZCD_SimulatorInit();
}

/* /////////////////////////////////////////////////////////////////////////////////
Func: TMR_Start
Parameters: void
Return: void
Job: Starts the timer
///////////////////////////////////////////////////////////////////////////////// */
void TMR_Start(void)
{
	TMR_CLEAR_FLAG;
	TMR_ENABLE_INTERRUPT;
	GLOBAL_INTERRUPT_ENABLE;
	TMR_ENABLE_CLOCK;
}

/* /////////////////////////////////////////////////////////////////////////////////
Func: TMR_CheckOverFlow
Parameters: void
Return: tByte
job: checks overflow of the timer
///////////////////////////////////////////////////////////////////////////////// */
tByte TMR_CheckOverFlow(void)
{
	return TMR_GET_FLAG;
}

/* /////////////////////////////////////////////////////////////////////////////////
Func: TMR_Stop
Parameters: void
Return: void
job: Stops the timer
///////////////////////////////////////////////////////////////////////////////// */
void TMR_Stop(void)
{
	TMR_DISABLE_CLOCK;
}

/* /////////////////////////////////////////////////////////////////////////////
Func: TMR_Update
Parameters: void
return: void
Job: Non vectored timer0 interrupt will be called every Timer tick and execute
the included tasks.
////////////////////////////////////////////////////////////////////////////// */
void TMR_Update(void) __interrupt 0
{
    /* Reload timer */
	TMR_CLEAR_FLAG;
	TMR_UPDATE_REGISTER(TMR_TICK_MS);

	/*Toggle ZCD simulation pin to measure the right timing*/
	ZCD_SimulatorStart();

	/*Start two time lines depending on motor angle to avoid halting tasks while
	  start delay */
	if(Motor_GetAngel()> Angel_MIN)
    {
        /*First time line*/
        FirstTurnON();
    }
    else if(Motor_GetAngel()< Angel_STOP)
    {
        /*Second time line*/
        Normal_RunTime();
    }
}

/* /////////////////////////////////////////////////////////////////////////////
Func: FirstTurnON
Parameters: void
return: void
Job: First time line as Motor update will gradually moves from stopped state to
moving state and while this time the motor will move .
////////////////////////////////////////////////////////////////////////////// */
static void FirstTurnON(void)
{
    SSD_Update();
    SW_Update();
    VC_Update();
    DISP_Update();
    Motor_Update();
}

/* /////////////////////////////////////////////////////////////////////////////
Func: Normal_RunTime
Parameters: void
return: void
Job: Second time line as Motor update will follow Seven segment display inr4
priority as hard real time task then the rest of application.
////////////////////////////////////////////////////////////////////////////// */
static void Normal_RunTime(void)
{
    SSD_Update();
    Motor_Update();
    VC_Update();
    SW_Update();
    DISP_Update();
}

/* /////////////////////////////////////////////////////////////////////////////
Func: ZCD_SimulatorInit
Parameters: void
return: void
Job: initializes ZCD pin which will toggle every timer tick as ZCD simulation
to measure the required timing (In PICSIMLAB)
////////////////////////////////////////////////////////////////////////////// */
static void ZCD_SimulatorInit(void)
{
    GPIO_InitPortPin(ZCD_PORT_CR,ZCD_Pin,GPIO_OUT);
}
/* /////////////////////////////////////////////////////////////////////////////
Func: ZCD_SimulatorStart
Parameters: void
return: void
Job: Writes high to ZCD pin which will toggle every timer tick as ZCD simulation
to measure the required timing (In PICSIMLAB)
////////////////////////////////////////////////////////////////////////////// */
static void ZCD_SimulatorStart(void)
{
    GPIO_TogPortPin(ZCD_PORT_DR,ZCD_Pin);
}
