// Keyboard input

void setup(){
  size (600, 600);
}

void draw(){
  // Check if any key has been pressed
  if(keyPressed == true){
    background(#FF0000);

    // Check for specific key
    if (key == 'r'){
      fill(0);
      rect(50, 50, 500, 500);
    }
    if (key == 'e'){
      fill(0);
      ellipseMode(CORNER);
      ellipse(50, 50, 500, 500);
    }

  }
  else{
    background(#00FF00);
  }

  
}