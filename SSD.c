/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
File: SSD.c
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#include "Main.h"
#include "Port.h"
#include "Timer.h"
#include "SSD.h"

/* SSD_Update period */
#define SSD_PERIOD_MS   (10)

/* Number of SSD symbols */
#define N_SSD_SYMBOLS   (4)


/* SSD Symbols port data values */
static tByte SSD_Data[N_SSD_SYMBOLS] =
{
 /* 0bpgfedcba     SSD pins layout*/

    0b00001000,  /*One dash Min speed*/
    0b01001000,  /*Two dashes Mid speed*/
    0b01001001,  /*Three dashes Max speed*/
    0b00000000   /*Null*/
};

/* Current SSD to be updated */
static tSSD SSD_current = SSD_MIN;

/* SSD values */
static tSSD_Symbol SSD_Values[N_SSD] = {SSD_NULL};

static void SSD_Out(tSSD ssd, tSSD_Symbol ssd_symbol);

void SSD_Init(tSSD ssd)
{
    /* Initialize SSD data pins */
    GPIO_InitPort(SSD_DATA_PORT_CR, GPIO_OUT);
    SSD_Out(ssd, SSD_NULL);

    /* Initialize SSD control pin and turn SSD OFF*/
    switch (ssd)
    {
        case SSD_MAX:
            GPIO_InitPortPin(SSD_MIN_CR, SSD_MIN_PIN, GPIO_OUT);
            break;
        case SSD_MED:
            GPIO_InitPortPin(SSD_MED_CR, SSD_MED_PIN, GPIO_OUT);
            break;
        case SSD_MIN:
            GPIO_InitPortPin(SSD_MAX_CR, SSD_MAX_PIN, GPIO_OUT);
            break;
        /* Should not be here */
        default:
            break;
    }
    SSD_SetState(ssd, SSD_OFF);
}

void SSD_Update(void)
{
    static tWord SSD_counter = 0;


    /* Check if it is time for the SSD_Update to run */
    SSD_counter += TMR_TICK_MS;

    if (SSD_counter != SSD_PERIOD_MS){
        return;
    }

    SSD_counter = 0;

    /* display current SSD value of the current SSD */
    SSD_Out(SSD_current, SSD_Values[SSD_current]);

    if (SSD_current == SSD_MAX)
    {
        SSD_current = SSD_MIN;
    } else
    {
        SSD_current++;
    }
}

tSSD_Symbol SSD_GetValue(tSSD ssd)
{
    return SSD_Values[ssd];
}
void SSD_SetValue(tSSD ssd, tSSD_Symbol ssd_symbol)
{
    SSD_Values[ssd] = ssd_symbol;
}

tSSD_State SSD_GetState(tSSD ssd)
{
    tSSD_State ret = SSD_OFF;
    switch (ssd)
    {
        case SSD_MIN:
            ret = GPIO_ReadPortPin(SSD_MIN_DR, SSD_MIN_PIN);
            break;
        case SSD_MED:
            ret = GPIO_ReadPortPin(SSD_MED_DR, SSD_MED_PIN);
            break;
        case SSD_MAX:
            ret = GPIO_ReadPortPin(SSD_MAX_DR, SSD_MAX_PIN);
            break;
        /* Should not be here */
        default:
            break;
    }
     return ret;

}

void SSD_SetState(tSSD ssd, tSSD_State state)
{
    switch (ssd)
    {
        case SSD_MIN:
            GPIO_WritePortPin(SSD_MIN_DR, SSD_MIN_PIN, state);
            break;
        case SSD_MED:
            GPIO_WritePortPin(SSD_MED_DR, SSD_MED_PIN, state);
            break;
        case SSD_MAX:
            GPIO_WritePortPin(SSD_MAX_DR, SSD_MAX_PIN, state);
            break;
        /* Should not be here */
        default:
            break;
    }
}



static  void SSD_Out(tSSD ssd, tSSD_Symbol ssd_symbol)
{
    /* Turn off SSDs */
    SSD_SetState(SSD_MIN, SSD_OFF);
    SSD_SetState(SSD_MED, SSD_OFF);
    SSD_SetState(SSD_MAX, SSD_OFF);

    /* Output ssd_symbol on selected ssd */
    GPIO_WritePort(SSD_DATA_PORT_DR, SSD_Data[ssd_symbol]);

    /* Turn ssd ON */
    SSD_SetState(ssd, SSD_ON);


}
