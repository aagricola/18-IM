void setup(){
 size(600, 600);
}

void draw(){
  //pushMatrix and pop Matrix create a matrix stack
  //think of two stacked transparancies
 pushMatrix();
 //sets the coordinates of the new matrix
 translate(500, 500);
 //rotates the entire matrix
 rotate(radians(180));
 rect(0, 0, 100, 100);
 fill(0);
 popMatrix();
}