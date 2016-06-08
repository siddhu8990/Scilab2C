#include "AVRPeripheralPWM.h"

uint8 u8AVRPWM0SetDutys(uint8 duty)
{
 uint8 duty_value = 0;
 duty_value = (((uint16)(duty * 0xff))/100);
 OCR0 = duty_value;
 return 0;
}

