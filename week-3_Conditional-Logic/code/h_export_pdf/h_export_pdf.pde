// Save pdf for editing in Illustrator or Inkscape
// derived from Saw Sheffield

// This imports a library of code which makes it possible to save output as a pdf.
import processing.pdf.*;

void setup() {
	size(400, 400);
}

void draw() {
	ellipse(mouseX, mouseY, 10, 10);
}

void mousePressed() {
  // beginRecord() starts recording what is being drawn to the screen to a pdf file.
  beginRecord(PDF, "exported/everything-####.pdf");
}

void keyPressed(){
 // The endRecord() function stops writing data to a pdf.
  endRecord();

  // The exit function will cause the sketch to end when run.
  //exit();

  // noLoop() will stop the draw function from looping when run.
  noLoop(); 
}