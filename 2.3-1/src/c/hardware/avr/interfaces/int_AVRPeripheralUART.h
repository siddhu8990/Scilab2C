//This file defines constants corresponding to gpios.
//
// Authors
//     Siddhesh Wani
//

#ifndef __INT_AVRPERIPHERALUART_H__
#define __INT_AVRPERIPHERALUART_H__

#include <avr/io.h>
#include "AVRPeripheralUART.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define AVRUARTSetup(in1,in2,in3,in4) u8AVRUARTSetups((uint8) in1,(uint32) in2,(uint8) in3,(uint8) in4);

#define d0AVRUARTTransmitu80(in1) dAVRUARTTransmitu8(in1);

#define g2AVRUARTTransmitu80(in1) gAVRUARTTransmitu8(in1);

#define u160AVRUARTTransmitu80(in1) u16AVRUARTTransmitu8(in1);

#define i160AVRUARTTransmitu80(in1) i16AVRUARTTransmitu8(in1);

#define u80AVRUSARTReceiveCharu80() u8AVRUSARTReceiveCharu8();

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__AVRPERIPHERALUART_H__ */
