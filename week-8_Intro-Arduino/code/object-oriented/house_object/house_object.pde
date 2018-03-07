//house object
House house;
color c;

void setup() {
  size(400, 400); 
  background(255);
  house = new House(150, 150, 20, 20, 100);
  smooth(2);
}

void draw() {
  background(255);
  noFill(); 
  c = color(150); 
  // mouseX position determines speed factor for houseQuake function
  float factor = constrain(mouseX/10, 0, 5);
  // The functions are given arguments, such 
  // as "houseQuake by the following factor"
  // and "draw house with the following color."
  house.houseQuake(factor);
  house.drawHouse(c);
}