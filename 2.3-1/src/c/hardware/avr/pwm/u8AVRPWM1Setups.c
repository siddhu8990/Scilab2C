#include "AVRPeripheralPWM.h"


/*
waveform_mode:
          0 for Phase correct PWM Mode
          1 for Fast PWM Mode 
          2 for CTC Mode

output_mode:
        For Phase Correct PWM Mode:
        0 for Clear OC0 on compare match when up-counting. Set OC0 on compare
        match when down-counting.
        1 for Set OC0 on compare match when up-counting. Clear OC0 on compare
        match when down-counting.
 
        For Fast PWM Mode:
        0 for non-inverted output i.e Clear OC0 on compare match, set OC0 at BOTTOM.
        1 for inverted output i.e Set OC0 on compare match, clear OC0 at BOTTOM.
        
        For CTC Mode:
        0 to Clear OC0 on compare match
        1 to Set OC0 on compare match
        2 to toggle OC0 on compare match
*/

uint8 u8AVRPWM1Setups(uint8 waveform_mode, uint8 output_mode, uint8 output_pin)
{
 switch(waveform_mode)
 {
  case 0:
        TCCR1A |= (1<<WGM11);
        TCCR1B |= (1<<WGM13);
        break;

 case 1:
        TCCR1A |= (1<<WGM11);
        TCCR1B |= (1<<WGM12)|(1<<WGM13);
        break;

 case 2:
        TCCR1B |= (1<<WGM12)|(1<<WGM13);
        break;
 }
 if(output_pin==0)
 {
  switch(output_mode)
  {
   case 0:
         TCCR1A |= (1<<COM1A1);
         break;
 
   case 1:
         TCCR1A |= (1<<COM1A0)|(1<<COM1A1);
         break;

   case 2:
         TCCR1A |= (1<<COM1A0);
         break;
  }
 }
 else if(output_pin==1)
      {
       switch(output_mode==0)
       {
        case 0: 
              TCCR1A |= (1<<COM1B1);
              break;
 
        case 1:
              TCCR1A |= (1<<COM1B0)|(1<<COM1B1);
              break;

        case 2:
              TCCR1A |= (1<<COM1B0);
              break;
       }
      }
 return 0;
}
