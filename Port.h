/* ////////////////////////////////////////////////////////////////////////////////////////////////////
Name: Eslam Aboutaleb
File: Port.h
Date: 30/3/2020
//////////////////////////////////////////////////////////////////////////////////////////////////// */
#ifndef __PORT_H__
#define __PORT_H__

#include "Main.h"


/* Leds' pins */
#define LED_1_PORT_DR   (GPIO_PORTB_DATA)
#define LED_1_PORT_CR   (GPIO_PORTB_CONTROL)
#define LED_1_PIN       (GPIO_PIN_3)


/* Switches */
#define SW_PLUS_PORT_DR        (GPIO_PORTB_DATA)
#define SW_PLUS_PORT_CR        (GPIO_PORTB_CONTROL)
#define SW_PLUS_PIN            (GPIO_PIN_0)

#define SW_MINUS_PORT_DR       (GPIO_PORTB_DATA)
#define SW_MINUS_PORT_CR       (GPIO_PORTB_CONTROL)
#define SW_MINUS_PIN           (GPIO_PIN_1)

#define SW_D_PORT_DR           (GPIO_PORTB_DATA)
#define SW_D_PORT_CR           (GPIO_PORTB_CONTROL)
#define SW_D_PIN               (GPIO_PIN_2)

/* SSD */
#define SSD_DATA_PORT_DR        (GPIO_PORTD_DATA)
#define SSD_DATA_PORT_CR        (GPIO_PORTD_CONTROL)

#define SSD_MIN_DR              (GPIO_PORTB_DATA)
#define SSD_MIN_CR              (GPIO_PORTB_CONTROL)
#define SSD_MIN_PIN             (GPIO_PIN_7)

#define SSD_MED_DR              (GPIO_PORTB_DATA)
#define SSD_MED_CR              (GPIO_PORTB_CONTROL)
#define SSD_MED_PIN             (GPIO_PIN_6)

#define SSD_MAX_DR              (GPIO_PORTB_DATA)
#define SSD_MAX_CR              (GPIO_PORTB_CONTROL)
#define SSD_MAX_PIN             (GPIO_PIN_5)



/*DC motor*/
#define MOTOR_1_PORT_DR         (GPIO_PORTC_DATA)
#define MOTOR_1_PORT_CR         (GPIO_PORTC_CONTROL)
#define MOTOR_1_POLARITY_PIN_POSITIVE    (GPIO_PIN_1)


#endif // __PORT_H__
