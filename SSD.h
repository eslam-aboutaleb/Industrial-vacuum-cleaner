/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
File: SSD.c
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#ifndef __SDD_H__
#define __SDD_H__

#include "Main.h"
#include "Port.h"

/* Number of SSDs */
#define N_SSD           (3)


typedef enum
{
    SSD_MIN,
    SSD_MED,
    SSD_MAX
}tSSD;

/* SSD states */
typedef enum
{
    SSD_OFF = 0,
    SSD_ON = 1
}tSSD_State;

/* SSD symbols */
typedef enum
{
    SSD_1_dash = 0,
    SSD_2_dashes,
    SSD_3_dashes,
    SSD_NULL
}tSSD_Symbol;

void SSD_Init(tSSD ssd);
void SSD_Update(void);
void SSD_SetValue(tSSD ssd, tSSD_Symbol ssd_symbol);
tSSD_Symbol SSD_GetValue(tSSD ssd);
tSSD_State SSD_GetState(tSSD ssd);
void SSD_SetState(tSSD ssd, tSSD_State state);


#endif // __SDD_H__
