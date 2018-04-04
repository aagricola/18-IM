function setup() {
  createCanvas(400,400);
  //if an HTML element does not exist, you can create one
  createElement('h1', "Your lucky numbers below!")
}

function mousePressed(){
  //dom elements are relative to the entire page
  createP(int(random(0,99)) + " Click Again!");
}

function draw() {
  background(100);
  fill(0,255,0);
  //shapes are drawn relative to the canvas
  rect(100, 100, 50, 50);
}