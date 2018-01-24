//Amanda Agricola
//rotational movement with mousepressed
//rotating text

float angle1 = 0;
float angle2 = 0;
float rotationSpeed1 = .050;
float rotationSpeed2 = .025;

String message = "weeeeeeee!!";

PFont f;

void setup() {
  size(600, 600);
  f = createFont("Arial", 20);
}

void draw() {
   background(255);
   noFill();
   ellipse(width/2, height/2, 50, 50);
   if(mousePressed == true){
   // Set the font
   fill(0);
   textFont(f);                  
   textAlign(CENTER);
   //set orbit to rotate around the center
   pushMatrix();
   translate(300, 300);
   rotate(angle1);
   text(message, 0, 0); 
   popMatrix();
   
   //create motion
   angle1 += rotationSpeed1;
   
   }
   //orbiting ellipse outside of mousePressed condition
   pushMatrix();
   translate(300, 300);
   rotate(angle2);
   ellipse(200, 0, 50, 50);
   popMatrix();
   angle2 += rotationSpeed2;
   }
   
  //Saves images in the sketch folder as a tiff
 // If saveFrame() is supplied arguments, a specific location and file type can be set.   
   void keyPressed(){
  if (key == 's' || key == 'S') {
    saveFrame("export/drawing-#####.png");
  }
}