//house object array
House[] houses = new House[1];

void setup() {
  size(800, 800); 
  background(255);
  for(int i = 0; i < houses.length; i++){
  houses[0] = new House(150, 150, 20, 20, 100);
  }
  smooth(2);
}

void draw() {
  background(255);
  noFill(); 
    //whatever the length of array, update and display all objects
  for(int i = 0; i < houses.length; i++){
  houses[i].houseQuake();
  houses[i].drawHouse();
  }
}

void mousePressed(){
  //make a new house at the mouse location
 House b = new House(mouseX, mouseY, 20, 20, 100); 
 //add new house to the array
 houses = (House[]) append(houses, b);
}