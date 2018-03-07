
//All classes must include four elements: name, data, constructor, and methods.
// Define a class name outside of setup and draw.
// pecified by “class WhateverNameYouChoose” Class names are traditionally
//capitalized (to distinguish them from variable names, which traditionally are lowercase).
class House {
  //house variables (aka data)
  float x, y, w, h, houseD;

  //house constructor-  a special function inside of a class that creates the instance of the object itself
  House(float tempX, float tempY, float tempW, float tempH, float tempHouseD) {
    x = tempX;
    y = tempY;
    w =tempW;
    h = tempH;
    houseD = tempHouseD;
  }

  // methods.
  //we add functionality to our object by writing methods.
  //These are done in the same way as we made functions last week, 
  //with a return type, name, arguments, and a body of code.

  void houseQuake(float speed) {
    //change x and y randomly
    x = x + random(-1, 1)*speed;
    y = y + random(-1, 1)*speed;
    // Constrain house to window
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }

  void drawHouse(color windowColor) {
    //house
    rect(x, y, houseD, houseD);
    //windows
    fill(windowColor);
    for (float i = x+10; i < x+houseD; i = i+30) {
      stroke(0);
      rect(i, y+10, w, h);
    }
    fill(100);
    //roof
    triangle(x, y, x+houseD/2, y-houseD/2, x+houseD, y);
    //door
    rect(x+40, y+60, w, h*2);
  }
}