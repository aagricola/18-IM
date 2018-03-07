// A quick comparison of noticeable differences between Processing and Arduino code
// from Sam Sheffield

// Comments are still created with // or /* */

// Arrays are declared in different ways...
int thisArray[6]; // In Processing: int[] thisArray = new int[6];
int thatArray[] = {1,2,3}; // In Processing: int[] thatArray = {1,2,3};

// Still used for initializing things at the start of the sketch
void setup(){

	// If printed output is needed, the speed of transmission of a Serial object must be set in setup()
	Serial.begin(9600); // 9600 is commonly used
}

// In Processing: void draw(){
void loop(){
	// The println() function belongs to the Serial object, but is otherwise used in the same way.
	Serial.println("hello");

	// Delays are commonly used in Arduino code to regulate speed (in milliseconds).
	delay(100); // A very small delay should always be used after Serial.println();

	// Restart loop()
}
