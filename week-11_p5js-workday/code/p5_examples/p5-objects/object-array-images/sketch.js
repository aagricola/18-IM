//make a bug where mousePressed

var bugs = [];
var bb = [];

//preload all of your images
function preload(){
// bb[0] =  loadImage('images/bellybutton0.png');
// bb[1] =  loadImage('images/bellybutton1.png'); 
// bb[2] =  loadImage('images/bellybutton2.png');
// bb[3] =  loadImage('images/bellybutton3.png');

//we can also load the images with a loop
for(var i = 0; i < 4; i++){
bb[i] = loadImage('images/bellybutton' + i + '.png');
}
}


function setup() {
  createCanvas(600,600);
  background(170);
}

//also try mouseDragged
function mousePressed(){
  var r = floor(random(bb.length)); //floor, ceiling, round
  var b = new JitterBug(mouseX, mouseY, bb[r]);
  bugs.push(b); // pushes the object to the end of the array
}

function draw() {
  
  //use bugs.length to retrieve the length of the array
    for(var i = 0; i < bugs.length; i++){
    bugs[i].move();
    bugs[i].display();
  }
  
}

