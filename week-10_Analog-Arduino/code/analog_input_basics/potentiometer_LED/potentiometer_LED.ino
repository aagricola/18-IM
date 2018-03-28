// Basic analog input for use with potentiometers, photocells, etc.

int analog0; // A variable to hold analog input. Analog input will always be a range of numbers between 0~1023

void setup(){
  // Neither analog input nor output uses pinMode()!
}

void loop(){
  analog0 = analogRead(0); // Read input from the specified analog pin.
  analog0 = map(analog0, 0, 1023, 0, 255); // Map range of input (0-1023) to match range of output (0-255)
  analogWrite(3, analog0); // The 3 refers to digital pin 3. Only the digital pins with a ~ next to them can be used for analog output.
}
