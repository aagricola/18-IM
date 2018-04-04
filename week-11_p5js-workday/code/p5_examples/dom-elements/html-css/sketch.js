var canvas;
var h1
var h2

var x = 100;
var y = 100;

function setup() {
  //we make a variable to hold the canvas
  canvas = createCanvas(400, 400);
  //then we can position it anywhere with absolute positioning
  canvas.position(100, 300);

  //if an HTML element does not exist, you can create one
  h1 = createElement('h1', "Your lucky numbers")
  h1.position(100, 450);

  h2 = createElement('h2', "Generating your lucky numbers...")
  h2.position(0, 30);
  
  //dynamically change styling
  button = createButton("color");
  button.mousePressed(changeStyle);
  
  h2.mouseOver(changeStyle);
  h2.mouseOut(revertStyle);
}

function mousePressed() {
  //change content of h2 element with the .html function
  h2.html("Here they are!")
    //dom elements are relative to the entire page
  createP(int(random(0, 99)) + " Click Again!");
}

function changeStyle(){
  //css style dynamic in js
  h1.style("background-color", "pink");
  h1.style("padding", "24px");
}

function revertStyle(){
  //css style dynamic in js
  h1.style("background-color", "clear");
  h1.style("padding", "8px");
}

function draw() {
  //clear(); //this leaves the background transparent
  background(100);
  fill(0, 255, 0);
  //shapes are drawn relative to the canvas
  //rect(100, 100, 50, 50);
  rect(x, y, 50, 50);
  h1.position(x, y);
  x = x + random(-5, 5);
}