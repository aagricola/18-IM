//  array is a list of value elements

var numbers = [
  46,
  450,
  550
  ];

function setup() {
  createCanvas(600,600);
}

function draw() {
  background(0);
  stroke (255);
  
  //index order starts at 0
  line(numbers[0], 0, numbers[0], height);
  line(numbers[1], 0, numbers[1], height);
  line(numbers[2], 0, numbers[2], height);
}