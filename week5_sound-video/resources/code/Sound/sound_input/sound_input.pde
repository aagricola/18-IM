import processing.sound.*;

// Variables used to hold Sound objects
AudioIn in; // Mic input
Amplitude amp; // Used to get volume
float scale; // Variable which will use mic amplitude to scale ellipse

void setup(){
  size(600, 600);
  
  // Create instance of audio input in this sketch on the first channel
  in = new AudioIn(this, 0);
  // Start getting input
  in.start();
  
  // Create instance of Amplitude analyzing object
  amp = new Amplitude(this);
  // Set input 
  amp.input(in);
}

void draw(){
  background(0);

  // Map the analyzed mic input. Full ampitude range 0-1.
  scale = map(amp.analyze(), 0, .5, 1, 300);
  ellipse(width/2, height/2, scale, scale);
  
  // It calculates the root mean square of the amplitude of each audio block
  println(amp.analyze());
}