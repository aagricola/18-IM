// Basic analog output for use with LEDs, buzzers, etc.

// Analog output will always be a range of numbers between 0~255
// Only the digital pins with a ~ next to them can be used for analog output.

void setup(){
  // Analog output does not use pinMode()!
}

void loop(){
  analogWrite(3, 255); // The 3 refers to digital pin 3. An LED will appear to be half as bright as usual.
}
