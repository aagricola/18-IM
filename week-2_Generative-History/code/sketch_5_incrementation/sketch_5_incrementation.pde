//Amanda Agricola
//variable, assignment operations

//Variables must have a type and a name 
//Once you declare a variable, then you can assign it a value by setting it equal to something
int circleX = 0;
int circleY = 100;

   void setup() {
     size(500, 200);
} 
    void draw() {
     background(255);
     stroke(0);
     fill(175);
     // ++ -- Are used to increment or decrement a number stored in a variable by 1 each time draw() loops
     ellipse(circleX++, circleY, 50, 50);
     //circle ++ could also be written as the below assigment operation 
     //circleX = circleX + 1;

     //+= -=  *= /= Are used when a number other than 1 is needed (though it also works with 1)
     //circleY -= 2 ;
}