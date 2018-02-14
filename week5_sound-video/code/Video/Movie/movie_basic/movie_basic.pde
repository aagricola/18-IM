// Import Video library
import processing.video.*;

// Create a variable to hold a Movie object 
Movie mov;

void setup() {
  size(640, 360);

  // Load movie data into the Movie object. Drag clip into Processing IDE to add.
  mov = new Movie(this, "transit.mov");

  // loop playback and start it when application begins
  mov.loop();

  // ALTERNATIVE: play video only once
  // movie.play();
}

void draw() {
  // Movies can be treated like images  
  image(mov, 0, 0);

  // Movies have their own functions (called methods)...
  // find more methods here https://processing.org/reference/libraries/video/index.html
  if (mousePressed) {
    mov.speed(.25); // adjust the speed
  } else {
    mov.speed(1);
  }
}  

// Movie function which continues to read frames from the video file
void movieEvent(Movie mov) {
  mov.read();
}