
void setup(){
 size(300, 300); 
}

void draw(){
 background(#C12D48);
 //house
 fill(#9684C6);
 rect(50, 90, 100, 100); 
 //roof
 fill(#6C6B6F);
 triangle(50, 90, 100, 10, 150, 90);
 //windows
 strokeWeight(3);
 stroke(#C8C6CE);
 fill(255);
 rect(60, 100, 20, 20);
 rect(90, 100, 20, 20); //x=x+w+10
 rect(120, 100, 20, 20);
 noStroke();
 rect(90, 150, 20, 40); //door
 fill(242, 255, 173, 200);
 arc(90, 180, 188, 108, 13, 14);
}
void mousePressed(){
 saveFrame("house-###.png"); 
}