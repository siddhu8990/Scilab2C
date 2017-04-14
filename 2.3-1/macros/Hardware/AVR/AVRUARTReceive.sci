function received = AVRUARTReceive()
// Function to Receive Char value send to ATmega16 using UART or USART.
// Description
//        This function Receives Char as 8 bit value.This value is stored in UDR at receiving       
//        end.
//
//Examples
//    state = AVRUARTReceive(); //This function will Receive char and return the entire value
//                               
//See also
//     AVRUARTSetup
//     AVRUARTTransmit
//
// Authors
//     Ashish Kamble
//
// This is curretly dummy function. It provides no functionality but is required 
// for providing support for generating C code for AVR.
received = 0; // received has been initialised to avoid runtime error.
endfunction
