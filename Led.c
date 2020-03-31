/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
File: Led.c
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#include "Main.h"
#include "Port.h"
#include "Led.h"

/* /////////////////////////////////////////////////////////////////////////////////
Func: LED_Init
Parameters: led from type structure tLED & state from type structure tLED_State
Return: void
job: initializes the required LEDs and makes first state is off
///////////////////////////////////////////////////////////////////////////////// */
void LED_Init(tLED led, tLED_State state)
{
    /* Configure led pins as output */
    switch (led)
    {
        case LED_1:
            GPIO_InitPortPin(LED_1_PORT_CR, LED_1_PIN, GPIO_OUT);
            break;

        default:
            /* No Thing */
            break;
    }
    /* Set led state */
    LED_SetState(led, state);

}
/* /////////////////////////////////////////////////////////////////////////////////
Func: LED_Toggle
Parameters: led from type structure tLED
Return: void
job: Toggles the required LED
///////////////////////////////////////////////////////////////////////////////// */
void LED_Toggle(tLED led)
{
    /* Toggle led */
    if (LED_GetState(led) == LED_ON)
    {
        LED_SetState(led, LED_OFF);
    } else
    {
        LED_SetState(led, LED_ON);
    }

}

/* /////////////////////////////////////////////////////////////////////////////////
Func: LED_SetState
Parameters: led from type structure tLED & state from type structure tLED_State
Return: void
job: Changes the state of the required LED
///////////////////////////////////////////////////////////////////////////////// */
void LED_SetState(tLED led, tLED_State state)
{
    /* Set led state */
    switch (led)
    {
        case LED_1:
            GPIO_WritePortPin(LED_1_PORT_DR, LED_1_PIN, state);
            break;
        default:
            /* No Thing */
            break;
    }
}
/* /////////////////////////////////////////////////////////////////////////////////
Func: LED_GetState
Parameters: led from type structure tLED & state from type structure tLED_State
Return: ret from type structure tLED_State
job: Gets the current state of the LED
///////////////////////////////////////////////////////////////////////////////// */
tLED_State LED_GetState(tLED led)
{
    tLED_State ret = LED_OFF;

    /* Set led state */
    switch (led)
    {
        case LED_1:
            ret = GPIO_ReadPortPin(LED_1_PORT_DR, LED_1_PIN);
            break;
        default:
            /* No Thing */
            break;
    }
    return ret;
}

/* LED will be update in Display module*/
void LED_Update(void)
{

}
