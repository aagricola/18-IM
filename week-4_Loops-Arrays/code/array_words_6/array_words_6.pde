//array poem

// This is a string array
String[] word = {"Have", "A", "Nice", "Day", ":)"};

// Used to access array
int counter;

void setup() {
  size (600, 600);
  // this is where you fill the text object
}

void draw() {
  background(0);
  fill(255);
  textSize(32);
  // this is where you fill the text object
  text(word[counter], 20, height/2);
}

void mousePressed() {
  // Create a loop which adds to counter when mouse is pressed
  // This number should be your array's length - 1 b/c you start counting at 0
  if (counter < 4) {
    counter++;
  } else {
    counter = 0;
  }
  println("Counter: " + counter);
}