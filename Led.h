/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
File: Led.h
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#ifndef __LED_H__
#define __LED_H__



typedef enum
{
    LED_1
}tLED;

typedef enum
{
   LED_OFF = 0,
   LED_ON  = 1
}tLED_State;


void LED_Init(tLED led, tLED_State state);
void LED_SetState(tLED led, tLED_State state);
tLED_State LED_GetState(tLED led);
void LED_Update(void);
#endif // __LED_H__
