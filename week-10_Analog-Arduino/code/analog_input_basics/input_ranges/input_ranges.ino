// Using ranges of analog input. For example, using one potentiometer to control 3 LEDs.

int analog0; // A variable to hold analog input. Analog input will always be a range of numbers between 0~1023

void setup(){
  // Analog input does not use pinMode()!
  pinMode(2, OUTPUT); // LED 1
  pinMode(3, OUTPUT); // LED 2
  pinMode(4, OUTPUT); // LED 3
}

void loop(){
  analog0 = analogRead(0); // Read input from the specified analog pin.

  // Use three ranges of numbers from analog input
  if (analog0 >= 600){
    // If the input is greater or equal to 600, turn LED 1 on.
    digitalWrite(2, HIGH);
    // Turn off other LEDs
    digitalWrite(3, LOW);
    digitalWrite(4, LOW);
  }
  else if (analog0 >= 300){
    // If the input is greater or equal to 300 and less than 600, turn LED 2 on.
    digitalWrite(3, HIGH);
    // Turn off other LEDs
    digitalWrite(2, LOW);
    digitalWrite(4, LOW);
  }
  else if (analog0 >= 0){
    // If the input is greater or equal to 0 and less than 300, turn LED 3 on.
    digitalWrite(4, HIGH);
    // Turn off other LEDs
    digitalWrite(2, LOW);
    digitalWrite(3, LOW);
  }
  delay(100); // Always use a small delay after printing messages
}