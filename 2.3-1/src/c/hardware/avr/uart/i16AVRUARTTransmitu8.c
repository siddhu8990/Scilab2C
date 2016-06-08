#include "AVRPeripheralUART.h"

uint8 i16AVRUARTTransmitu8(int16 data)
{
 uint16 temp1;
 uint16 temp2;
 temp1 = abs(data)/100;
 if(data<0)
 AVRUARTTransmitChar(45);
 AVRUARTTransmitChar(48+temp1);
 temp1 = abs(data) - temp1*100;
 temp2 = temp1;
 temp1 = temp1/10;
 AVRUARTTransmitChar(48+temp1);
 temp2 = temp2 - temp1*10;
 AVRUARTTransmitChar(48+temp2);
}
