//Amanda Agricola
//03 variables for absolute value 

/*A Variable is a named pointer to a location in the computer’s memory
it allows you to save information from one point in the program to refer back to it later in the program
*/

float xSpeed;
float ySpeed;

void setup() {
  size(600,600);
  background(255);
  smooth();
} 
void draw() {
  stroke(0);//stroke color
  //pmouseX, pmouseY = previous mouse x and y positions
  //using absolute value to calculate speed of mouse motion
  //speed = distance/time
  //abs() absolute value will always return a positive number
 xSpeed = abs(mouseX-pmouseX); 
 ySpeed = abs(mouseY-pmouseY);
    
  fill(mouseX+180, mouseY+180, 100);
  ellipse(mouseX, mouseY, 10 + xSpeed, 10 + ySpeed);

  print("x speed: " + xSpeed + "\t");
  println("y speed: " + ySpeed );
} 