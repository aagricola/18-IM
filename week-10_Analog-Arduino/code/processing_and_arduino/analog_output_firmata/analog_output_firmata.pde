// Controlling analog output. Example based on arduino_output, which is included with the Arduino for Processing library

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

int ledPin = 3; // LED is connected to PWM pin 3
int pwmValue; // Stores the number to send to ledPin3

Drop d1;

void setup() {
  size(600, 600);
 // println(Arduino.list());
  
  // Run this sketch and replace the 0 in Arduino.list()[] by choosing your Arduino from the list printed in the console (it will look like "/dev/tty.usbmodem..."). 
  // The count will start at 0! Make sure your Arduino is plugged in first!
  arduino = new Arduino(this, Arduino.list()[3], 57600); // The last argument (57600) sets the communication speed
  
  // You don't need to set the Arduino analog pins as inputs.

  d1 = new Drop();
}

void draw() {
  background(0);
  d1.update();
  d1.draw();
  // Use the y position of Drop to control the brightness
  pwmValue = int( map(d1.y, 0, height, 0, 255) ); // Change the range to 0-255 and convert it to an int
  arduino.analogWrite(ledPin, pwmValue);
}