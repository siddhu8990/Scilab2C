function AVRDigitalOut(port,pin,state)
// Function to change state (high\low) of a digital output pin on AVR
//
// Calling Sequence
//     AVRDigitalOut(port,pin,state)
//
// Parameters
//     port : port of microcontroller to be used
//     pin : pin of port (mentioned above) to be used
//     state : state to be outputed on pin (HIGH\LOW)
//
// Description
//     Each AVR microcontroller has pins which can be configured as digital
//     outputs. These are normally divided among some 'ports' (group of pins).
//     User has to select one of these port and which pin of that port as 
//     digital output. Also, desired output state must be specified as 
//     'HIGH' or 'LOW'.     
//
// Examples
//     AVRDigitalOut('A',0,HIGH)
//
// See also
//     AVRDigitalIn
//
//
// Authors
//     Siddhesh Wani
//
// This is curretly dummy function. It provides no functionality but is required 
// for providing support for generating C code for AVR.

if((port==0)|(port>=8)) then 
disp("Error : Inavalid input argument ''port'' in AVRDigitalOut function.");
end
if(pin>=8) then 
disp("Error : Invalid input argument ''pin'' in AVRDigitalOut function.");
end
if(state>=2) then 
disp("Error : Invalid input argument ''state'' in AVRDigitalOut function.");
end
endfunction
