//  array is a list of value elements

var numbers = [
  46,
  220,
  300,
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
  //what if you had 100 of these though!?
  //remember for loops!
  /*
  line(numbers[0], 0, numbers[0], height);
  line(numbers[1], 0, numbers[1], height);
  line(numbers[2], 0, numbers[2], height);
  line(numbers[3], 0, numbers[3], height);
  line(numbers[4], 0, numbers[4], height);
  */
  
  // this is equivalent to the above
  
  for (var i = 0; i < 5; i++){
    line(numbers[i], 0, numbers[i], height);
  }
}

//see if you can display some words in different patterns of different colors on the screen)