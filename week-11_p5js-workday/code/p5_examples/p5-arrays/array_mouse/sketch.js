// derived from Lauren McCarthy example

//can have an empty array that gets filled on the spot with some data
var mouseXPositions = [];
var current = 0;
var total = 100;

function setup() {
  createCanvas(900,600);
}

function draw() {
  background(0);
  stroke(255);
  
  for (var i = 0; i < mouseXPositions.length; i++){
    // //stroke(i+10);
    line(mouseXPositions[i], 0, mouseXPositions[i], height); 
  }
  
  mouseXPositions[current] = mouseX;
  current ++;
  if(current > total){
    current = 0;
  }
}