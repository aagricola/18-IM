// Basic analog input for use with potentiometers, photocells, etc.

int analog0; // A variable to hold analog input. Analog input will always be a range of numbers between 0~1023

void setup(){
  // Analog input does not use pinMode()!
	Serial.begin(9600); // Start communication for Serial Monitor
}

void loop(){
  analog0 = analogRead(0); // Read input from the specified analog pin.
  Serial.println(analog0); // Send number to the Serial Monitor
  delay(100); // Always use a small delay after printing messages
}