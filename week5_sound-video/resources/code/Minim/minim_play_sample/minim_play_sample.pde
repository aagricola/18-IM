// Playing a sample with Minim
// Based on Sample  example which comes with Processing

import ddf.minim.*;

// Variable to hold a Minim object. Only one needed per sketch
Minim minim;

// Variable to hold audio sample. Can have multiple samples in a single sketch.
AudioSample sample;


void setup() {
  size(600, 600);
  
  // Create new instance of the Minim object
  minim = new Minim(this);

  // Load sound files from the data folder, also designating a sample rate
  sample = minim.loadSample( "SD.wav", 512);
}

void draw() {
  background(0);
}

void mousePressed() {
  // Play audio sample
  sample.trigger();
}