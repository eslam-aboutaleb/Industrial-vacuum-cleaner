/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
File: VC.h
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#ifndef VC_H_
#define VC_H_

/*VC Speeds: Min & Mid & Max*/
typedef enum
{
    VC_STOP=0,
    VC_MIN_Speed,
    VC_MED_Speed,
    VC_MAX_Speed
}tVC_Speed;


/*Function Prototypes*/
void VC_Init(void);
tVC_Speed VC_GetSpeed(void);
void VC_Update(void);

#endif // VC_H_
