class Blob {
	float x, y, diameter, newDiameter, count;
	color fillColor;

	Blob(float _x, float _y, color _fillColor){
		x = _x;
		y = _y;
		newDiameter = diameter;
		fillColor = _fillColor;
	}

	// Uses a number (input from the Arduino) to modify the overall size of the blob
	void update(float _diameter){
		diameter = map(_diameter, 0, 1023, 100, 500); // Map the input to a range of 100-500
		newDiameter = diameter + (cos(count) * diameter/20);
		count += .25;
	}

	void draw(){
		noStroke();
		fill(fillColor);
		ellipse(x, y, newDiameter, newDiameter);
	}
}