PImage [] imageArray = new PImage[5];

void setup() {
  size(600, 600);
  background(#E3AC87);
  noStroke();
  frameRate(10);
  imageMode(CENTER);
  imageArray[0] = loadImage("bellybutton.png");
  imageArray[1] = loadImage("bellybutton1.png");
  imageArray[2] = loadImage("bellybutton2.png");
  imageArray[3] = loadImage("bellybutton3.png");
  imageArray[4] = loadImage("bellybutton4.png");
}

void draw() {
  if (mousePressed){
  image(imageArray[(int)random(imageArray.length)], mouseX, mouseY);
  //image(imageArray[(int)random(imageArray.length)], width/2, 0);
  }
}

void mousePressed() {
  redraw();
}