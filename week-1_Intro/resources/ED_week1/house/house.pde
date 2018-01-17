
void setup(){
 size(200, 200); 
}

void draw(){
 background(255);
 //house
 rect(50, 90, 100, 100); 
 //roof
 triangle(50, 90, 100, 10, 150, 90);
 //windows
 rect(60, 100, 20, 20);
 rect(90, 100, 20, 20); //x=x+w+10
 rect(120, 100, 20, 20);
 rect(90, 150, 20, 40); //door
}