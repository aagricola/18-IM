// Import Video library
import processing.video.*;

// Create a variable to hold a Movie object 
Movie mov;

void setup() {
  size(640, 360);

  // Load movie data into the Movie object. Drag to Processing IDE to add to sketch
  mov = new Movie(this, "transit.mov");
  
  // loop playback and start it when application begins
  mov.loop();
}

void draw() {
  // Treat like an image
  image(mov, 0, 0);
}

void mousePressed() {
  // Pause playback 
  mov.pause();
}

void mouseReleased() {
  // Resume playback
  mov.play();
}

// Movie function which continues to read frames from the video file
void movieEvent(Movie mov) {
  mov.read();
}