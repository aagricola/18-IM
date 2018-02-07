// creative coding, 2017
// while loop & for loop
// Derived from a Daniel Shiffman example on Youtube

/*
repeat loop
comes in handy when you want to use a few lines of code to do something over and over and over
control structure of an if (on the board):

if(....true){
 _________  (one time)
}

while(  true  ){
  ____________ (do this as long as this is true)
}

** danger of infinate loops

*/

void setup() {
  size(600, 400);
}

void draw() {
  background(0);
  strokeWeight(4);
  stroke(255);

  int x = 0; //innitialization a local variable
  while (x <= width) { //test for exit condition
    fill(255);
    rect(x, 200, 25, 25);
    x = x + 50; //incramentation operation
    //this is such a common loop
    //for loops put all three of these parts together
  }
/*
  for (int x = 0; x <= width; x = x + 50) { // x += 50
    fill(255, 0, 200);
    rect(x, 300, 25, 25);
  }
  */
}