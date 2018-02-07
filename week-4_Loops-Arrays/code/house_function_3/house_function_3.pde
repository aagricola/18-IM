//multiple functions

float x =150;
float y = 150;
float houseD = 100; //house diameter

float w = 20;//window height and width
float h = 20;

void setup() {
  size(400, 400); 
  background(255);
  smooth(2);
}

void draw() {
  background(255);
  noFill();
  
  // A color based on distance from the mouse
  float d = dist(x, y, mouseX, mouseY);
  color c = color(d); 
  
  // mouseX position determines speed factor for houseQuake function
 float factor = constrain(mouseX/10, 0 , 5);
 
  // The functions are given arguments, such 
  // as "houseQuake by the following factor"
  // and "draw house with the following color."
 houseQuake(factor);
 drawHouse(c);
  }

void houseQuake(float speed){
  //change x and y randomly
  x = x + random(-1, 1)*speed;
  y = y + random(-1, 1)*speed;
  // Constrain house to window
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
}

void drawHouse(color windowColor){
    //house
  rect(x, y, houseD, houseD);
 //windows
   fill(windowColor); 
 for (float i = x+10; i < x+houseD; i = i+30) {
    stroke(0); 
    rect(i, y+10, w, h);
}
  fill(100);
  //roof
  triangle(x, y, x+houseD/2, y-houseD/2, x+houseD, y);
  //door 
  rect(x+40, y+60, w, h*2); 
 
}