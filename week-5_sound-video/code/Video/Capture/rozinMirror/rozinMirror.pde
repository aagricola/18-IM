
// Based on Mirror 2 by Daniel Shiffman. 

import processing.video.*;

int cellSize = 15;
int cols, rows;
int x, y;
int loc;
color c;
float sz;
Capture cam;


void setup() {
  size(640, 480);
  cols = width / cellSize;
  rows = height / cellSize;
  rectMode(CENTER);

  // Uses the default cam input, see the reference if this causes an error
  cam = new Capture(this, width, height);
  cam.start();

  background(0);
}


void draw() { 
  if (cam.available()) {
    cam.read();
    cam.loadPixels();

    background(0);

    // Begin loop for columns
    for (int i = 0; i < cols; i++) {
      // Begin loop for rows
      for (int j = 0; j < rows; j++) {

        // Where are we, pixel-wise?
         x = i * cellSize;
         y = j * cellSize;

        //int loc = x + y*cam.width; // Take the 2D array and make it 1D
        loc = (cam.width - x - 1) + y*cam.width; // Use this instead to reverse x (mirror the image)
        c = cam.pixels[loc];

        // Adjust the size of the rectangles by their brightness
        sz = (brightness(c) / 255.0) * cellSize;

        // Draw rectangles
        noStroke();
        fill(c);

        pushMatrix();
        translate(x, y);
        rect(0, 0, sz, sz); // sz = Size of rectangle
        popMatrix();
      }
    }
  }
}