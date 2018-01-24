//Amanda Agricola
//gravity, dampening
//example from Learning Processing 

float x = 100; // x location of square 
float y = 0; // y location of square
float speed = 0; // speed of square
float gravity = .2;

void setup() {
  size(200,200);
}
void draw() {
  background(255);
  // Display the square
fill(0);
noStroke();
rectMode(CENTER);
rect(x,y,10, 10);
y = y + speed;  //add speed to location
speed = speed + gravity; //add gravity to speed
// If square reaches the bottom
// Reverse speed
if (y > height) {
        speed = speed * -0.95; //multiplying by -.95 instead of .1 slows the square
        //down each time it bounces. this is known as "dampening" effect
  }
}