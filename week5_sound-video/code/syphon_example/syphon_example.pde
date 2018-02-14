//syphon example by Amanda Agricola
//helpful tutorial here: https://socram484.wordpress.com/2013/09/12/using-syphon-with-processing-into-madmapper/#comment-207
//open madMapper and run the code
//it will appear in the syphon section of madMapper where you can selct it as your output

import codeanticode.syphon.*;

PGraphics canvas;//to do our drawing through this PGraphics instead of the typical method
SyphonServer server;//serves the images to MadMapper

void settings(){
  size (600, 600, P3D);
  PJOGL.profile=1;
}

void setup() {
  canvas = createGraphics(600, 600, P3D);
  // Create syhpon server to send frames out.
  server = new SyphonServer(this, "Processing Syphon");
  frameRate(1);
}

void draw() {
  canvas.beginDraw();
  canvas.background(0);
  // Start the counter (i) at 0 and keep adding 1 while it is under 10
  // While that is true, do what is between {}
  for (int i = 0; i < 10; i++) {
    canvas.noFill();
    canvas.stroke(random(50, 255));
    canvas.triangle(random(0, 600), random(0, 600), random(0, 600), random(0, 600), random(0, 600), random(0, 600));
  }
  // After the condition is met, keep going through sketch...
  println("loop over");
  canvas.endDraw();
  image(canvas, 0, 0);
  server.sendImage(canvas);//tell the server to serve the canvas to MadMapper
}