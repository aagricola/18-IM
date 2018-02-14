// Based on example by Daniel Shiffman
// Code for: https://youtu.be/QLHMtE5XsMs

import processing.video.*;
Capture cam;

PImage prevFrame; // image for holding our previous frame
float threshold = 20; // How different must a pixel be to be a "motion" pixel

float motionX = 0;
float motionY = 0;

float lerpX = 0;
float lerpY = 0;

void setup() {
  size(640, 480);
  cam = new Capture(this, width, height, 30);
  cam.start();

  prevFrame = createImage(cam.width, cam.height, RGB); // same size as capture
}

void draw() {
  //float totalMotion = 0.0;

  if (cam.available()) {
    // Save previous frame before reading from the camera
    prevFrame.copy(cam, 0, 0, cam.width, cam.height, 0, 0, prevFrame.width, prevFrame.height);
    prevFrame.updatePixels();
    cam.read();
  }
  //load the pixels of the camera and display
  cam.loadPixels();
  prevFrame.loadPixels();
  image(cam, 0, 0);
  
  int count = 0;
  //variabls for avg pixel
  float avgX = 0;
  float avgY = 0;
  
  loadPixels();
  
  //threshold = 50;
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
      float d = distSq(r1, g1, b1, r2, g2, b2); 

      //totalMotion += diff;
 
      if(d > threshold*threshold){
        avgX += x;
        avgY += y;
        count++;
        
        //uncomment below to change the color of the pixels
        
       // pixels[currentPixel] = color(255);
     // }else{
      //  pixels[currentPixel] = color(0);
      }
    }
  }
  updatePixels();

  if (count > 200) { 
    motionX = avgX / count;
    motionY = avgY / count;
    // Draw a circle at the tracked pixel
  }
  
  /*
  //interpolate between the two values
  // this moves the circle 10% of the way towards the new point
  lerpX = lerp(lerpX, motionX, 0.1); 
  lerpY = lerp(lerpY, motionY, 0.1); 
  */
  
  //draw a circle at the tracked pixel
  fill(255, 0, 255);
  strokeWeight(2.0);
  stroke(0);
  ellipse(motionX, motionY, 36, 36);
}

//this is a custom function that performs the same equation as dist 
//returning a float of the distance between the current and previous pixels squared 
// this eliminates the squareroot of the dist function, and makes code run faster
  float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
  return d;
}