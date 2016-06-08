#include "AVRPeripheralUART.h"

uint8 u16AVRUARTTransmitu8(uint16 data) 
{
 uint8 temp1;
 uint8 temp2;
 uint8 temp3;
 uint8 temp4;
 temp1 = data/10000;
 AVRUARTTransmitChar(48+temp1);
 temp1 = data - temp1*10000;
 temp2 = temp1;
 temp1 = temp1/1000;
 AVRUARTTransmitChar(48+temp1);
 temp1 = temp2 - temp1*1000;
 temp3 = temp1;
 temp1 = temp1/100;
 AVRUARTTransmitChar(48+temp1);
 temp1 = temp3 - temp1*100;
 temp4 = temp1;
 temp1 = temp1/10;
 AVRUARTTransmitChar(48+temp1);
 temp1 = temp4 - temp1*10;
 AVRUARTTransmitChar(48+temp1);
}
