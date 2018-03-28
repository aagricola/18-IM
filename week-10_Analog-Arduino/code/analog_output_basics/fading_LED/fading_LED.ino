// Using code to fade an LED

// Analog output will always be a range of numbers between 0~255
// Only the digital pins with a ~ next to them can be used for analog output.

int brightness = 255; // Start at full brightness

void setup(){
  // Analog output does not use pinMode()!
}

void loop(){
  // Fade out and then start over
  if(brightness > 0){
    brightness--;
  }
  else{
    brightness = 255;
  }
  analogWrite(3, brightness); // Set the brightness of an LED connected to the Arduino. The 3 refers to digital pin 3.
  delay(10); // Slowing the sketch down makes the effect more visible
}
