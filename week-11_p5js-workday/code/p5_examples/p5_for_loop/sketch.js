// For loops are used to do something many times.

function setup(){
  createCanvas (600, 600);
  frameRate(30);
  background(0);
}

function draw(){
  if (mouseIsPressed == true){
    background(0);
  }

}

function keyPressed(){
  // Start the counter (i) at 0 and keep adding 1 while it is under 10
  // While that is true, do what is between {}
  for (var i = 0; i < 10; i++) {
    noFill();
    stroke(random(50,255));
    triangle(random(0,600), random(0,600),random(0,600), random(0,600),random(0,600), random(0,600));
  }

}