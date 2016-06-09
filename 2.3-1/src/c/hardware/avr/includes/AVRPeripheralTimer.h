//This file defines functions prototypes related to Timer.
//
// Authors
//     Ashish Kamble
//

#ifndef __AVRPERIPHERALTIMER_H__
#define __AVRPERIPHERALTIMER_H__

#include <avr/io.h>
#include "types.h"

#ifdef  __cplusplus
extern "C" {
#endif

//Function prototypes

uint16 u8AVRGetTimerValues(uint16 timer);

uint8 u8AVRTimerSetups(uint8 timer, uint16 prescalar,uint8 clock_source);

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__AVRPERIPHERALTIMER_H__ */
