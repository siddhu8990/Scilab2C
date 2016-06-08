#include "AVRPeripheralUART.h"

uint8 gAVRUARTTransmitu8(uint8 *msg)
{
 while(*msg!='\0')
 {
  AVRUARTTransmitChar(*msg);
  msg++;
 }
}
