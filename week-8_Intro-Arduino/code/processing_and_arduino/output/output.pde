// Controlling digital output from Processing to Arduino. 
//Example based on arduino_output, which is included with the Arduino for Processing library
//derived from Sam Sheffield
/*
To use:
* Using the Arduino software, upload the StandardFirmata example (located in Examples > Firmata > StandardFirmata) to your Arduino board.
* Run this sketch and look at the list of serial ports printed in the message area below. Note the index of the port corresponding to your Arduino board (the numbering starts at 0).
* Modify the "arduino = new Arduino(...)" line below, changing the number in Arduino.list()[0] to the number corresponding to the serial port of your Arduino board.
  
For more information, see: http://playground.arduino.cc/Interfacing/Processing
*/

// Needed for Arduino communication using Firmata
import processing.serial.*;
import cc.arduino.*;

// Control the Arduino as an object
Arduino arduino;

Button button1;
int ledPin13 = 7;

void setup() {
  size(600, 600);
  println(Arduino.list());
  
  // Run this sketch and replace the 0 in Arduino.list()[] by choosing your Arduino from the list printed in the console (it will look like "/dev/tty.usbmodem..."). 
  // The count will start at 0! Make sure your Arduino is plugged in first!
  arduino = new Arduino(this, Arduino.list()[1], 57600); // The last argument (57600) sets the communication speed
  
  // Set the Arduino digital pins as outputs.
  arduino.pinMode(ledPin13, Arduino.OUTPUT);

  // Use an on-screen button for control
  button1 = new  Button(width/2, height/2, 200, #B8FAF8);
}

void draw() {
  background(0);
  button1.draw();

  // Use the buttonPressed() method of the Button class to toggle an LED HIGH or LOW
  if(button1.buttonPressed() == true){
    //digitalWrite writes the value to the whichever pin you tell it to
    arduino.digitalWrite(ledPin13, Arduino.HIGH); 
  }
  else{
    arduino.digitalWrite(ledPin13, Arduino.LOW);
  }
}