//Amanda Agricola
//02 draw with line

void setup() {
  size(600,600);
  background(255);
  smooth();
} 
void draw() {
  stroke(0);
  //pmouseX, pmouseY = previous mouse x and y positions 
  line(pmouseX,pmouseY,mouseX,mouseY);
} 