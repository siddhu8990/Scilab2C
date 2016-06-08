//This file defines constants corresponding to gpios.
//
// Authors
//     Siddhesh Wani
//

#ifndef __INT_AVRPERIPHERALTIMER_H__
#define __INT_AVRPERIPHERALTIMER_H__

#include <avr/io.h>
#include "AVRPeripheralTimer.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define AVRGetTimerValue(in1) u8AVRGetTimerValues((uint16) in1);

#define AVRTimerSetup(in1,in2,in3) u8AVRTimerSetups((uint8) in1, (uint16) in2, (uint8) in3);

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__AVRPERIPHERALADC_H__ */
