class House {
  //house variables
  float x, y, w, h, houseD;

  //house constructor
  House(float tempX, float tempY, float tempW, float tempH, float tempHouseD) {
    x = tempX;
    y = tempY;
    w =tempW;
    h = tempH;
    houseD = tempHouseD;
  }

  void houseQuake() {
    //change x and y randomly
    x = x + random(-1, 1);
    y = y + random(-1, 1);
    // Constrain house to window
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }

  void drawHouse() {
    fill(255);
    //house
    rect(x, y, houseD, houseD);
    //windows
    fill(100);
    for (float i = x+10; i < x+houseD; i = i+30) {
      stroke(0); 
      rect(i, y+10, w, h);
    }
    //roof
    triangle(x, y, x+houseD/2, y-houseD/2, x+houseD, y);
    //door 
    rect(x+40, y+60, w, h*2);
  }
}