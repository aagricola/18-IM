//keynew concept: nested loops. we are looking at a screen of pixels. if we wanted to make a for loop
  // that fills the screen.   For every X drawn, draw all the ys (draw on screen)
     /*for( x=0, ..... ){
       for(y =0, ....){

       }
     }*/

  //useful if you are making a game with cells like chess or checkers,
  //useful for image processing

void setup() {
  size(600, 400);
}

void draw() {
  background(0);
  strokeWeight(4);
  stroke(255);

  // 2 for loops not nested
  for (int x = 0; x <= width; x += 50){
    fill(random(255), 0, random(255));
    rect(x, 200, 25, 25);
    }

  for (int y = 0; y <= height; y += 50){
     fill(random(255), 0, random(255));
     rect(200, y, 25, 25);
  }

/*
//nested for loops
  for (var x = 0; x <= width; x += 50){
    //add a nested for loop to do all the y's for each x drawn
    for (var y = 0; y <= height; y += 50){
    fill(random(255), 0, random(255));
    //now you will draw at x, y
    rect(x, y, 25, 25);
    }*/
  }
    