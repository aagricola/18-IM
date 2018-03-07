// Basic structure of an Arduino sketch

// Declare global variables here
int ledPin = 13;

// This function is only run once when the sketch is uploaded or the Arduino is reset (with button or by plugging it in)
void setup(){
	// Any functions used for initialization  (like setting up digital pins) go here
	pinMode(ledPin, OUTPUT);
}

// This function continues to run (looping from top to bottom) as long as the Arduino is powered
void loop(){
	// This is where the bulk of the interesting code will go
	digitalWrite(13, HIGH); 

	// Restart loop()
}