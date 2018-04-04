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

//3 steps in making the constructor

// first, create a function block for our constuctor
//notice the name is upper case (a strongly encouraged naming convention)
// property values that you want to be different for each instance are passed in through the constructor
function JitterBug(tempX, tempY, tempDiameter){
  //second, you add the properties
  //instead of var, we prepend with this. to indicate we are adding a variable to this object
  this.speed = .5;
  //properties passed into the constructor
  this.x = tempX;
  this.y = tempY;
  this.diameter = tempDiameter;
  
  //the last step is to add the methods
  //it is just like how we wrote functions except it's defined in the constructor and is refered to using this.
  //this essentially says ' create a property called move and assign its value to be this function'
  this.move = function(){
    this.x += random(-this.speed, this.speed);
    this.y += random(-this.speed, this.speed);
  }
  
  this.display = function(){
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
}

