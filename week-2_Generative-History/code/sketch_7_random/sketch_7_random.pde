   //Amanda Agricola
   //random function
   //example from Learning Processing
    
    float r;
    float g;
    float b;
    float a;
    float diam;
    float x;
    float y;
    float xPos = 250;
    float yPos = 250;
    
    void setup() {
     size(500,500);
     background(0);
     smooth();
}
    void draw() {
     // Fill all variables with random values
     // The random() function results in a random float between 0 and the number supplied as an argum
     r = random(255);
     g = random(255);
     b = random(255);
     a = random(255);
     diam = random(20);
     x = random(width);
     y = random(height);
     // Use values to draw an ellipse
     noStroke();
     fill(r,g,b,a);
     ellipse(x,y,diam,diam);
  // This function can also be given two arguments which supply a minimum, maximum range for the result.
  // Random movement can be created when combined with += -= etc.
     xPos += random(-2,2);
     yPos += random(-2,2);
     
     ellipse(xPos, yPos, 50, 50);
}