//Images
//Amanda Agricola
//image source https://www.tumblr.com/search/dog%20png

// PImage is an Object which is used to display an image. Give it a unique name to be able to use it throughout the sketch. 
// This is done at the top of the sketch to make it available to use in both setup() and draw(). 
// Please see reference for details on acceptable file types.
PImage pug;

void setup(){
  size(600, 600); //FX2D is for high def rendering
  pixelDensity(2);//this turns on more pixels for retina display
  pug = loadImage("pug.png");
}

void draw(){
 background(0, 200,255);

//The arguments for imaage() function are: (image Object name, x, y);
//images are positioned from the top left corner by default
image(pug, 0, 0);
// Optional width and height arguments can also be added to resize images. This is in pixel dimensions.
image(pug, 400, 0, 200, 200);

  // Images (and primitives) can be rotated. Use imageMode() to change point of origin.
  imageMode(CENTER);
  
  // Isolate the thing you want to rotate by putting it between pushMatrix(); and popMatrix();. 
  pushMatrix();
  // use translate() to set x and y position. Arguments: (x,
  translate(500, 500);
  // Set rotation. NOTE: this is in radians, not degre
  rotate(radians(180));
  image(pug, 0, 0);
  popMatrix();
  imageMode(CORNER);
  
    // Other fun things...

  // The tint() function can tint an image a specified color. noTint() is used to turn off the effect.
  tint(#FF0000);
  image(pug, 0, 200, 200, 200);
  noTint();
  
    // The tint() function can tint an image a specified color. An extra argument specifies the alpha of the tinted image (range: 0-255).
  tint(#0000FF, 200);
  image(pug, 200, 200);
  noTint();

  // If the color is set to white, the alpha value allows you to change image opacity without any noticeable tinting
  tint(255, 128);
  image(pug, 400, 200, 200, 200);
  noTint();
}