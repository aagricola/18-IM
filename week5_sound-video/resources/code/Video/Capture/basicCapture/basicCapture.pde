// Based on GettingStartedCapture video example 

// Import the Video library
import processing.video.*;

// Create a Capture object to use webcam
Capture cam;

void setup() {
  size(640, 480);
  
  // Show a list of the available devices/configurations in the console
  String[] cameras = Capture.list();
  for (int i = 0; i < cameras.length; i++) {
    println(cameras[i]);
  }
  // cam = new Capture(this, cameras[0]); // capture at specified configuration
  cam = new Capture(this, width, height, 30); // or force it. framerate is optional

  // start capturing video
  cam.start();
}

void draw() {
  // If the webcam is available
  if (cam.available()) {
      cam.read(); // Store a frame in cam
  }
  
  // Capture objects can be treated like images...
  tint(mouseX, mouseY, 255);
  image(cam, 0, 0, width, height);

}