#include "AVRPeripheralPWM.h"

uint8 u8AVRPWM1SetDutys(uint8 output_pin, uint16 duty, uint16 Top_Value)
{
 uint16 duty_value = 0;
 ICR1 = Top_Value;
 if(output_pin==0)
 {
 duty_value = (((uint16)(duty * Top_Value))/100);
 OCR1A = duty_value;
 } 
 else if(output_pin==1)
      {
       duty_value = (((uint16)(duty * Top_Value))/100);
       OCR1B = duty_value;
      }    
 return 0;
}
