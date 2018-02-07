/*
//original bounce sketch
    int x = 0;
    int speed = 1;
    void setup() {
     size(200,200);
     smooth();
}
    void draw() {
     background(255);
      // Add the current speed to the x location.
     x = x + speed;
//If the object reaches either edge, multiply speed by  1 to turn it around.
     if ((x > width) || (x < 0)){
       speed = speed * -1;
}
     // Display circle at x location
     stroke(0);
     fill(175);
     ellipse(x,100,32,32);
   }
*/
//modularity - bounce using functions
int x = 0;
int speed = 1;
void setup() {
 size(200,200);
 smooth();
}
void draw() {
 background(255);
 //call the three functions
 move();
 bounce();
 display();
}
 //define funtion to move ball
 void move(){
 x = x + speed;
 }
 //define function to bounce ball
 void bounce(){
 if ((x > width) || (x < 0)){
   speed = speed * -1;
}
 }
//define function to display ball
void display(){
 stroke(0);
 fill(175);
 ellipse(x,100,32,32);
}