// Using an RGB LED with analog output

// Analog output will always be a range of numbers between 0~255
// Only the digital pins with a ~ next to them can be used for analog output.

int red = 6;
int green = 5;
int blue = 3;

void setup(){
  // Analog output does not use pinMode()!
}

void loop(){
  // The result of this will be a mixed color
  analogWrite(red, 0);
  analogWrite(green, 0);
  analogWrite(blue, 255);
}
