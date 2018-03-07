//house object
House[] houses = new House[100];

void setup() {
  size(800, 800); 
  background(255);
  for(int i = 0; i < houses.length; i++){
  houses[i] = new House(random(width), random(height), 20, 20, 100);
  }
  smooth(2);
}

void draw() {
  background(255);
  noFill(); 
  for(int i = 0; i < houses.length; i++){
  houses[i].houseQuake();
  houses[i].drawHouse();
  }
}