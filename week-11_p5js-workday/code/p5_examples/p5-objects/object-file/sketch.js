//2 steps to create and object instance
//first, declare the object variable
var bug;

//add a second object
var jit;

function setup() {
  createCanvas(200,200);
  background(170);
  //second, initialize the object with the keyword new
  //pass in the parameters for x, y, diam
  bug = new JitterBug(width/2, height/2, 20);
  jit = new JitterBug(width*.25, height*.25, 50);
}

function draw() {
  //call the methods
  //mirrors the way the are constructed using this. but now we use the object's variable name
  bug.move();
  bug.display();
  
  //the new object gets its own methods
  jit.move();
  jit.display();
}

