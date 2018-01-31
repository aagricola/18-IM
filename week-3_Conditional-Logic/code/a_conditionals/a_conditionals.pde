//Amanda Agricola
//Conditional statements: if, else 

float r = 0;
float g = 0;
float b = 255;

void setup(){
 size(600,600); 
}

void draw(){
 background(r,g,b);
 stroke(255);
 line(0,height/2, width, height/2);
// An if statement evaluates its argument as true or false. If true, the code between { } will run. 
// Otherwise, it will be ignor
 if(mouseY > height/2){
  b = b -1;
 } else {
   b = b + 1;
 }
 //Constrain values to avoid errors 
 //handling errors before they happen in code is emblematic of good style
 if(b > 255) {
   b = 255;
 } else if (b < 0){
  b = 0; 
 }
 //or use this built in function to constrain
r = constrain(r, 0, 255);
}