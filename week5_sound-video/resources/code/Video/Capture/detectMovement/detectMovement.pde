// Based on Learning Processing Example 16-13: Simple motion detection by Daniel Shiffman

import processing.video.*;
Capture cam;

PImage prevFrame; // image for holding our previous frame
float threshold = 20; // How different must a pixel be to be a "motion" pixel

void setup() {
  size(640, 480);
  cam = new Capture(this, width, height, 30);
  cam.start();

  prevFrame = createImage(cam.width, cam.height, RGB); // same size as capture
}

void draw() {
  float totalMotion = 0.0;

  if (cam.available()) {
    // Save previous frame before reading from the camera
    prevFrame.copy(cam, 0, 0, cam.width, cam.height, 0, 0, cam.width, cam.height);
    prevFrame.updatePixels();
    cam.read();
  }

  // Go through all pixels
  for (int x = 0; x < cam.width; x ++ ) {
    for (int y = 0; y < cam.height; y ++ ) {

      // get colors
      int currentPixel = x + y * cam.width; // locate current pixel
      color current = cam.pixels[currentPixel];      
      color previous = prevFrame.pixels[currentPixel]; 

      // compare colors
      float r1 = red(current); 
      float g1 = green(current); 
      float b1 = blue(current);
      float r2 = red(previous); 
      float g2 = green(previous); 
      float b2 = blue(previous);
      //using euclidian distance formula to compare colors
      float diff = dist(r1, g1, b1, r2, g2, b2);

      totalMotion += diff;
    }
  }
  
  float motionPercent = totalMotion / cam.pixels.length;
  println(motionPercent);

  // do something
  background(0);
  fill(motionPercent+50, 0, 0); 
  ellipse(width/2, height/2, motionPercent*2, motionPercent*2);
}