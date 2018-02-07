 // For loops are used to do something many times.
  
  void setup(){
   size(600, 600);
   // Slow things down so that it is easy to see the results
   frameRate(1);
  }
  
  void draw(){
    background(0);
    
  // Start the counter (i) at 0 and keep adding 1 while it is under 10
  // While that is true, do what is between {}
  for (int i =0; i < 10; i++) {
    noFill();
    stroke(random(50, 255));
    triangle(random(0, 550), random(0, 550), random(0, 550), random(0, 550), random(0, 550), random(0, 550));
}
// After the condition is met, keep going through sketch...
  }