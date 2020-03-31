/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
File: Motor.h
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#ifndef MOTOR_H_
#define MOTOR_H_

//#define MOTOR_1_BI_DIRECTION

typedef enum
{
    Motor_1
}tMotor;


typedef enum
{
   Motor_OFF = 0,
   Motor_ON  = 1
}tMotor_State;

typedef enum
{
    Motor_Stopped=0,
    Motor_ClockWise,
    Motor_AntiClockWise
}tMotor_Direction;

typedef enum
{
    Angel_170,
    Angel_140,
    Angel_90 ,
    Angel_10
}tMotor_Angel;

/*Motor info: State & Direction*/
typedef struct
{
    tMotor_State State;
    tMotor_Direction Direction;
}tMotor_Info;

/*Functions prototypes*/
void Motor_Init(tMotor Motor);
void Motor_SetState(tMotor Motor,tMotor_State State,tMotor_Direction Direction);
tMotor_Info * Motor_GetState(tMotor Motor);
void Motor_Stop(tMotor Motor);
void Motor_Update(void);
void Motor_Out(tMotor Motor);
tMotor_Angel Motor_GetAngel(void);

#endif // MOTOR_H_
