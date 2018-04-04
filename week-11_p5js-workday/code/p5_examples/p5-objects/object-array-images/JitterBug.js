
// function block for our constuctor
//now we put the image in place of diameter
function JitterBug(tempX, tempY, tempImg){
  //properties
  this.speed = .5;
  //properties passed into the constructor
  this.x = tempX;
  this.y = tempY;
  //this.diameter = tempDiameter;
  
  //image needs to be stored in its own property
  this.img = tempImg;
  
  // add the methods
    this.move = function(){
    this.x += random(-this.speed, this.speed);
    this.y += random(-this.speed, this.speed);
  }
  
  this.display = function(){
    //ellipse(this.x, this.y, this.diameter, this.diameter);
    
    imageMode(CENTER);
    //bug get's its own image
    image(this.img, this.x, this.y);
  }
}