//This file defines constants corresponding to gpios.
//
// Authors
//     Siddhesh Wani
//

#ifndef __INT_AVRPERIPHERALPWM_H__
#define __INT_AVRPERIPHERALPWM_H__

#include <avr/io.h>
#include "AVRPeripheralPWM.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define AVRPWM0Setup(in1,in2) u8AVRPWM0Setups((uint8) in1, (uint8) in2);

#define AVRPWM2Setup(in1,in2) u8AVRPWM2Setups((uint8) in1, (uint8) in2);

#define AVRPWM1Setup(in1,in2,in3) u8AVRPWM1Setups((uint8) in1, (uint8) in2, (uint8) in3);

#define AVRPWM0SetDuty(in1) u8AVRPWM0SetDutys((uint8) in1);

#define AVRPWM2SetDuty(in1) u8AVRPWM2SetDutys((uint8) in1);

#define AVRPWM1SetDuty(in1,in2,in3) u8AVRPWM1SetDutys((uint8) in1,(uint16) in2,(uint16) in3);

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__AVRPERIPHERALADC_H__ */
