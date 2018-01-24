//Formatted debugging for easier reading

void setup(){
	size (600, 600);
}

void draw(){
	background(#FF0000);

  // mouseX and mouseY are called variables.  
  // Variables store specific data 
  //in this case, the x and y position of the mouse.
	ellipse(mouseX, mouseY, 50, 50);

	// Unlike println(), print() does not create a new line when finished printing the message.
	// "\t" creates a column by adding a tabbed space between the print() message and the println()
	print("x: " + mouseX + "\t");
	println("y: " + mouseY);
}