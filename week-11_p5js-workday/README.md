# Hello!

## Today:
- Look at homeworks
- Intro to p5.js
- Translate a sketch from Processing to p5.js
- I want to come around and talk with each of you about your project ideas.
- 6pm Soldering in Dolphin

## Net Artworks

[100 Paintings Gallery](http://www.100paintings.gallery/?#), by Michele Manning and Zach Shipko

[Rafael Rozendaal](http://www.newrafael.com/websites)

[Reinier Feijen](http://www.boxofchocolates.nl/)

[Rhizome, Brushes, exhibition of artists who make paintings for the screen and the internet](http://rhizome.org/editorial/2015/sep/3/brushes/)

[Kelli Anderson, "This Book is a Planetarium"](https://kellianderson.com/blog/2017/10/03/this-book-is-a-planetarium/)

## p5.js

A p5.js sketch is made from a few different languages used together. HTML (HyperText Markup Language) provides the backbone, linking all the other elements together in a page. JavaScript (and the p5.js library) enable you to create interactive graphics that display on your HTML page. CSS (Cascading Style Sheets) can be used to further style elements on the HTML page.
- [Here is the official website](https://p5js.org/)
- [Converting Processing sketch to P5](https://github.com/processing/p5.js/wiki/Processing-transition)
- [Here is the online editor](http://alpha.editor.p5js.org/) (can be buggy at times)
- [Let's go ahead and download this p5 editor](https://github.com/processing/p5.js-editor/releases)

## Main Differences between Processing and p5.js

- Because you can think of your sketch as more than just the drawing canvas, size() has been replaced with createCanvas(), to suggest the possibility of creating other elements.
- use var in front of every new variable instead of primitive data types like int, float, char ect. - this is common to Java Script
- you can place load calls in a preload() method that happens before setup() (this means setup waits until everything inside is loaded - we will look at this with our image example)
- function is used instead of void before any function

function setup() {
createCanvas(640,480)
}

function draw() {
  if (mouseIsPressed){
  	fill(0);
  }else{
  	fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}

- in addition to mouse events, there are touch events
  mouseX ~ touchX
  mouseY ~ touchY
  mousePressed() ~ touchStarted()
  mouseDragged() ~ touchMoved()
  mouseReleased() ~ touchEnded()
- push/popMatrix and push/popStyle has been replaces with just push() and pop()
- when declaring variables before setup(), you will need to assign them values inside setup()
var n;
function setup() {
  createCanvas(100, 100);
  n = random(100);
}
- arrays are more simple in P5 (array example)
- JavaScript uses something called prototypes to form something similar to Java class objects. (object example)

## Final Projects

- April 11: meetings
- April 18: meetings
- April 25: Project Presentations
- May 2:  Turn in Documentation and any missing assignments // Course Evaluation

**Project Presentation**

Please make a **5 minute** presentation including slides about:
- Project mission && || Research Question
- Project Inspiration // Research Journey
- Documentation or live demonstration of prototype
- Mock-up or rendering of projected finished product

## Homework

- [Sign up for one-on-one meeting](https://docs.google.com/spreadsheets/d/1KeVIo481UTgfeNius0EuRNPB6uGh0IQJC4guDjfdMg4/edit?usp=sharing)
- Work on final Project
- submit your CPJ link to canvas

## Extra

[p5 serial communication with Arduino tutorial](https://itp.nyu.edu/physcomp/labs/labs-serial-communication/lab-serial-input-to-the-p5-js-ide/#Program_P5js_to_list_the_available_serial_ports)

[video capture in p5 (and other DOM examples)](https://p5js.org/examples/dom-video-capture.html)
