//make a bug where mousePressed

var bugs = [];


function setup() {
  createCanvas(200,200);
  background(170);
}

//also try mouseDragged
function mousePressed(){
  var r = random(10, 50);
  var b = new JitterBug(mouseX, mouseY, r);
  
  //bugs[0] = b;
  bugs.push(b); // pushes the object to the end of the array
}

function draw() {
  
  //use bugs.length to retrieve the length of the array
    for(var i = 0; i < bugs.length; i++){
    bugs[i].move();
    bugs[i].display();
  }
  
}

