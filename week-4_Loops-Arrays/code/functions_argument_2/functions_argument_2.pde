 
    int x = 0;
    int speed = 1;
    
    void setup() {
     size(200,200);
     smooth();
}
    void draw() {
     background(255);
     //call the three functions
     move(mouseX/10);
     bounce();
     display();
    }
     //funtion to move ball
     void move(int speedFactor){ //added argument to move of speedfactor to affect how fast the ball moves
     x = x + (speed * speedFactor);
     }
     
     //function to bounce ball
     //need this to return the ball so it doesn't go off screen
     void bounce(){
     if ((x > width) || (x < 0)){
       speed = speed * -1;
}
     }
    //function to display ball
    void display(){
     stroke(0);
     fill(175);
     ellipse(x,100,32,32);
   }