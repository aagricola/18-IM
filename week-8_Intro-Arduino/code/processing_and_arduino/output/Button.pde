class Button{
	float x, y, diameter;
	color fillColor;

	Button(float _x, float _y, float _diameter, color _fillColor){
		x = _x;
		y = _y;
		diameter = _diameter;
		fillColor = _fillColor;
	}

	void draw(){
		noStroke();

		// Change the button's alpha to show whether it has been pressed or not
		if(buttonPressed() == true){
			fill(fillColor, 255);
		}
		else{
			fill(fillColor, 155);
		}
		
		ellipse(x, y, diameter, diameter);
	}

	// Returns either true or false when a mouse rolls over a circle
	boolean buttonPressed(){
		if(dist(mouseX, mouseY, x, y) < diameter/2 && mousePressed == true){
			return true;
		}
		else{
			return false;
		}
	}
}