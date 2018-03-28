//simple face detection
//based on an example of face detection from Daniel Shiffman

// Import the library
import gab.opencv.*;

// We need Java rectangles
import java.awt.Rectangle;

// Library object
OpenCV opencv;

// An image
PImage img; 
// An image
PImage img2;

// Array of faces found
Rectangle[] faces;

void setup() {
  size(600, 400);
  // Load the image
  img = loadImage("tiny-trump.jpg");
  img2 = loadImage("Hot-Dog.png");
  // Create the OpenCV object
  opencv = new OpenCV(this, img.width, img.height);
  // Put image into OpenCV
  opencv.loadImage(img);
  
  // Which "cascade" are we going to use?
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  //opencv.loadCascade(OpenCV.CASCADE_EYE);  
  //opencv.loadCascade(OpenCV.CASCADE_NOSE);  

  
  
  // Detect!
  faces = opencv.detect();
}

void draw() {
  background(0);
  // Draw the image
  image(img, 0, 0);
  
  // If we found faces
  if (faces != null) {
    // Draw them all 
    for (int i = 0; i < faces.length; i++) {
      strokeWeight(2);
      stroke(255, 0, 0);
      noFill();
      rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
      //you could add an image instead of rect with the code below
      //image(img2, faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    }
  }
}