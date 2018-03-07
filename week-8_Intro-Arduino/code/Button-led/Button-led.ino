/*
  Button

 Turns on and off a light emitting diode(LED), 
 when pressing a pushbutton attached to pin 3.

 The circuit:
 * LED attached from pin 2 to ground
 * pushbutton attached to pin 3 from +5V
 * 10K resistor attached to pin 3 from ground
 * 
 */

// constants won't change. They're used here to
// set pin numbers:
const int buttonPin = 3;     // the number of the pushbutton pin
const int ledPin =  13;      // the number of the LED pin
const int ledPin2 =  2;      // the number of the LED pin


// variables will change:
int buttonState = 0;         // variable for reading the pushbutton status

void setup() {
  // initialize the LED pin as an output:
  pinMode(ledPin, OUTPUT);
  pinMode(ledPin2, OUTPUT);
  // initialize the pushbutton pin as an input:
  pinMode(buttonPin, INPUT);
  Serial.begin(9600); 
}

void loop() {
  // read the state of the pushbutton value:
  buttonState = digitalRead(buttonPin);
  //use serial.println for trouble shooting
  Serial.println(buttonState);
  // check if the pushbutton is pressed.
  // if it is, the buttonState is HIGH:
  if (buttonState == HIGH) {
    // turn LED on:
    digitalWrite(ledPin, HIGH);
    digitalWrite(ledPin2, HIGH);
  } else {
    // turn LED off:
    digitalWrite(ledPin, LOW);
  }
}
