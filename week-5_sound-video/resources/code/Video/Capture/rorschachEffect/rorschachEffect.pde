// Based on Learning Processing Example 16-13: Simple motion detection by Daniel Shiffman

import processing.video.*;
Capture cam;
PImage prevFrame; // image for holding our previous frame
PImage mirror;

float threshold = 50; // How different must a pixel be to be a "motion" pixel

void setup() {
  size(640, 480);
  cam = new Capture(this, width, height, 30);
  cam.start();

  prevFrame = createImage(cam.width, cam.height, RGB); // same size as capture
  mirror = createImage(cam.width, cam.height, RGB);
}

void draw() {

  if (cam.available()) {
    // Save previous frame for motion detection!!
    prevFrame.copy(mirror, 0, 0, mirror.width, mirror.height, 0, 0, mirror.width, mirror.height); // Before we read the new frame, we always save the previous frame for comparison!

    //prevFrame.copy(cam,0,0,cam.width,cam.height,0,0,cam.width,cam.height); // Before we read the new frame, we always save the previous frame for comparison!
    prevFrame.updatePixels();
    cam.read();
  }

  loadPixels();
  cam.loadPixels();
  prevFrame.loadPixels();

  // Begin loop to walk through every pixel
  for (int x = 0; x < cam.width; x ++ ) {
    for (int y = 0; y < cam.height; y ++ ) {

      //int loc = x + y*cam.width;            // Step 1, what is the 1D pixel location
      int loc = (cam.width - x - 1) + y*cam.width; // Reversing x to mirror the image
      color current = cam.pixels[loc];      // Step 2, what is the current color
      color previous = prevFrame.pixels[loc]; // Step 3, what is the previous color

      // Step 4, compare colors (previous vs. current)
      float r1 = red(current); 
      float g1 = green(current); 
      float b1 = blue(current);
      float r2 = red(previous); 
      float g2 = green(previous); 
      float b2 = blue(previous);
      float diff = dist(r1, g1, b1, r2, g2, b2);

      // Step 5, How different are the colors?
      // If the color at that pixel has changed, then there is motion at that pixel.
      if (diff > threshold) { 
        pixels[loc] = color(0);
      } else {
        pixels[loc] = color(255);
      }
      mirror.set(x, y, cam.pixels[loc]);
    }
  }
  updatePixels();
  //image(mirror,0,0);
}