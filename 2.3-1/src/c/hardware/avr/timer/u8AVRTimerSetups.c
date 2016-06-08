/* Copyright (C) 2016 - IIT Bombay - FOSSEE

 This file must be used under the terms of the CeCILL.
 This source file is licensed as described in the file COPYING, which
 you should have received as part of this distribution.  The terms
 are also available at
 http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
 Author: Siddhesh Wani
 Organization: FOSSEE, IIT Bombay
 Email: toolbox@scilab.in
*/ 


//Function to setup Timers in ATmega16
//Calling Sequence
//u8AVRTimerSetups(timer, prescalar,clock_source)
//Parameters:
//     timer:It is an integer value. 
//           0 to setup timer0
//           1 to setup timer1
//           2 to setup timer2   
//     prescalar:It is an integer value.
//               1 for no prescaling i.e clock will run at max 16Hz frequency
//               8 for prescaling clock by 8 i.e new clock frequency will be (clk/8)
//               64 for prescaling clock by 64 i.e new clock frequency will be (clk/64)
//               256 for prescaling clock by 256 i.e new clock frequency will be (clk/256)
//               1024 for prescaling clock by 1024 i.e new clock frequency will be (clk/1024)
//     clock_source:It is an integer value.
//                  0 if you are using internal clock source       
//                  1 if you are using external clock source
//Descrpition:
//      This function tells the micro controller which clock source you will be using.
//      The timer value and prescaler value passed in this function setup the timer as per
//      your requirement.


#include "AVRPeripheralTimer.h"

uint8 u8AVRTimerSetups(uint8 timer,uint16 prescalar,uint8 clock_source)
{
 if(clock_source==0)
 {
  if(timer==0)
  {
   switch(prescalar)
   {
    case 1:    TCCR0 |= (1<<CS00);
               TCNT0 = 0x00;
    case 8:    TCCR0 |= (1<<CS01);
	       TCNT0 = 0x00;
    case 64:   TCCR0 |= (1<<CS00)|(1<<CS01);
	       TCNT0 = 0x00;
    case 256:  TCCR0 |= (1<<CS02);
               TCNT0 = 0x00;
    case 1024: TCCR0 |= (1<<CS00)|(1<<CS02);
	       TCNT0 = 0x00;
    }
   }
  else if(timer==2)
  {
   switch(prescalar)
   {
    case 1:    TCCR2 |= (1<<CS20);
               TCNT2 = 0x00;
    case 8:    TCCR2 |= (1<<CS21);
	       TCNT2 = 0x00;
    case 64:   TCCR2 |= (1<<CS20)|(1<<CS21);
	       TCNT2 = 0x00;
    case 256:  TCCR2 |= (1<<CS22);
               TCNT2 = 0x00;
    case 1024: TCCR2 |= (1<<CS20)|(1<<CS22);
	       TCNT2 = 0x00;
    }
   }
  else if(timer==1)
  {
   switch(prescalar)
   {
    case 1:    TCCR1B |= (1<<CS10);
               TCNT1H = 0x00;
               TCNT1L = 0x00;
    case 8:    TCCR1B |= (1<<CS11);
               TCNT1H = 0x00;
               TCNT1L = 0x00;
    case 64:   TCCR1B |= (1<<CS10)|(1<<CS11);
               TCNT1H = 0x00;
               TCNT1L = 0x00;
    case 256:  TCCR1B |= (1<<CS12);
               TCNT1H = 0x00;
               TCNT1L = 0x00;
    case 1024: TCCR1B |= (1<<CS10)|(1<<CS12);
               TCNT1H = 0x00;
               TCNT1L = 0x00;
   }
  }
  }
  else if(clock_source==1)
  { 
   if(timer==0)
   {
    TCCR0 |= (1<<CS00)|(1<<CS01)|(1<<CS02);
    TCNT0 = 0x00;
   }
   else if(timer==2)
   { 
    TCCR2 |= (1<<CS20)|(1<<CS21)|(1<<CS22);
    TCNT2 = 0x00;
   }
   else if(timer==1)
   { 
    TCCR1B |= (1<<CS10)|(1<<CS11)|(1<<CS12);
    TCNT1H = 0x00;
    TCNT1L = 0x00;
   } 
  }  
}

   













