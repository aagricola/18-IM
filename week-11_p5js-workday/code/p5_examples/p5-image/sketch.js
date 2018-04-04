//notice that we do not have to call PImage, simply var 
var img;


function preload() {
  //image loaded the same way
  img = loadImage("assets/undoctored.jpg");
}

function setup() {
  createCanvas(810, 1080);
}

function draw() {
  background(0, 102, 153);
  //image called the same way
  image(img, 0, 0);
}
