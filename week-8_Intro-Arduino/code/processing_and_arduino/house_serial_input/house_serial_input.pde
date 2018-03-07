// Using digital input from Arduino to Processing. 
//Example based on arduino_input, which is included with the Arduino for Processing library
/*
To use:
* Using the Arduino software, upload the StandardFirmata example (located in Examples > Firmata > StandardFirmata) to your Arduino board.
* look at the list of serial ports printed in the message area below. Note the index of the port corresponding to your Arduino board (the numbering starts at 0).
* Modify the "arduino = new Arduino(...)" line below, changing the number in Arduino.list()[0] to the number corresponding to the serial port of your Arduino board.
  
For more information, see: http://playground.arduino.cc/Interfacing/Processing
*/

// Needed for Arduino communication using Firmata
import processing.serial.*;
import cc.arduino.*;

// Control the Arduino as an object
Arduino arduino;
int buttonPin2 = 2; //this is changed to whichever pin your button is connected to

House house;// Declare car object as a globle variable.
color c;

void setup() {
  size(400, 400);
  background(255);
  
  println(Arduino.list());

  // Run this sketch and replace the number in Arduino.list()[] by choosing your Arduino from the list printed in the console (it will look like "/dev/tty.usbmodem..."). 
  // The count will start at 0! Make sure your Arduino is plugged in first!
  arduino = new Arduino(this, Arduino.list()[1], 57600); // The last argument (57600) sets the communication speed
  
  
  // Set the Arduino digital pins as inputs.
  arduino.pinMode(buttonPin2, Arduino.INPUT); // Digital pin 2 will be used as an input

  house = new House(150, 150, 20, 20, 100);
  smooth(2);
}

void draw() {
  background(255);
  noFill();
  
  if (arduino.digitalRead(buttonPin2) == Arduino.HIGH){
  c = color(#FCFF79);
  house.houseQuake(2);
  }else{
  c = color(0);
  house.houseQuake(0);
  }
  
  house.drawHouse(c);
}