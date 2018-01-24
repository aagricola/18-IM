//example of mousePressed and key Pressed events
//from Daniel Shiffman's Learning Processing

void setup() {
  size(200,200);
  background(255);
} 
void draw() {
} //Nothing happens in draw() in this example!

/*mouse presses and key presses are considered events in Processing
it requires a third block of code to handle the event
the code tells it to execute once and only once for each occurrence of the event*/

void mousePressed() {
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(mouseX,mouseY,16,16);
} 
void keyPressed() {
  background(255);
} 