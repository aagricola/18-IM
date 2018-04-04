//we are going to make a variable that holds a list
var bugs = [];


function setup() {
  createCanvas(200,200);
  background(170);
  
  //bugs[0] = new JitterBug(width/2, height/2, 20);
 //bugs[1] = new JitterBug(width*.25, height*.25, 50);
  
   //using a for loop to iterate and access elements of the array
  for(var i = 0; i < 8; i++){
    //the formula below is what you have to figure out based on what you want it to look like
    var x = 20 + 40 * i;
  
  //could add random locations for x and y. random diameter
  //all you have to do is change one number to create 100 bugs. 
  //have not touched a thing in the constructor!
  
    //bugs[i] = new JitterBug(width/2, height/2, 20);
    bugs[i] = new JitterBug(x, height/2, 20);
  }
}

function draw() {
 /*if we were hard coding every index
  bugs[0].move();
  bugs[0].display();
 
  bugs[1].move();
  bugs[1].display();
  */
  
  //use bugs.length to retrieve the length of the array
    for(var i = 0; i < bugs.length; i++){
    bugs[i].move();
    bugs[i].display();
  }
  
}

