// Rectangular buttons
// Will not work with rectMode(CENTER)

float x = 200;
float y = 200;
float w = 200;
float h = 200;

boolean on;

void setup() {
	size(600, 600);
}

void draw() {

	// The on variable is true while over a rect and pressing left mouse button
	if(on == true){
		background(255);
	}
	else{
		background(0);
	}

  /*We make four separate tests to check if the cursor is
  on the correct side of each edge of the rectangle, then
  we com- pare each test and if they are all true, we know the cursor is inside.
  */
  if ((mouseX > x) && (mouseX < x + w) &&
    (mouseY > y) && (mouseY < y + h)) {
    fill(0,255,0);
    on = true;
    //and if mouse is pressed
    if (mousePressed == true){
      fill(255, 0, 0);
    }
  } else {
    fill(255);
    on = false;
  }
  rect(x, y, w, h);
}
