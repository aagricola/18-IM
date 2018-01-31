// Circular buttons
// Must be a circle, not an oval

float x = 300;
float y = 300;
float radius = 100;

// Used to keep track of whether a button is pressed
boolean on;

void setup() {
	size(600, 600);
}

void draw() {
  background(204);
  //dist() function to get the dis- tance from the center of the circle to the cursor
  // test to see if that distance is less than the radius of the circle
  float d = dist(mouseX, mouseY, x, y);
  //when dist is less than the radius
  // and When the mouse is pressed, the state of the button is toggled.
  if (d < radius && mousePressed) {
    radius++; //incrament the radius by 1
    fill(0);
    on = true;

  } else {
    fill(255);
    on = false;
  }
  ellipse(x, y, radius, radius);
}
