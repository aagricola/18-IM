## Today:

- Look at new processing sketches you've made
- Talk about loops
- Functions
- Arrays

## Repetition

Repetition is a huge part of the language of computing. We see patterns in graphic design, in nature, in music, and pretty much everywhere we look.

![zanyparade](http://zanyparade.com/v8/site_assets/17/img/htt_jungle06.jpg)

["Here to There"](http://zanyparade.com/v8/projects.php?id=17), Emily Gobeille and Theodore Watson, 2008
This is from a series of large format posters for children that combine science, nature, algorithm and design, to feed their imagination and curiosity. You can see a balance of hand illustration and generated pattern in these. They developed a suite of software tools using openFrameworks to programmatically build elements of visual stories being told.

![mark](http://geoform.net/sitedata/members/w/markwilson/e5906.jpg)

"e5906", [Mark Wilson](http://geoform.net/interviews/an-interview-with-artist-mark-wilson/), archival ink jet on rag paper, 61 x 61 cm (24 x 24 in), 2008

"I was trying to find a unique way of using the computer and software to create geometric images." -Mark Wilson

![frieder](http://dada.compart-bremen.de/imageUploads/medium/05NakeKlee65.jpg)

"13/9/65 Nr. 2 ("Hommage à Paul Klee")", Frieder Nake, 1965

Nake lists the random elements of this work. They are:
- Change of original width of the horizontal bands (at the left boundary)
- The “buckling” of the horizontal bands as they extend from left to right, but so that they never intersect
- For each quadrilateral that is generated as part of one horizontal band, a random decision is made: it is left empty, or filled by vertical lines, or by triangles
- The number of signs per quadrilateral (vertical lines or triangles)
- Positions of those signs per quadrilateral
- Additionally, the number of circles
- Position of each circle
- Size (radius) of the circles Size: 50 × 50 cm
- Signed lower left: Nake/ER56/Z64 (automaticly drawn signature)

This iconic generative pattern was created in response to Klee's "Hauptweg und Nebenwege"

![klee](http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAOI_PRD/on/demandware.static/-/Sites-ArsMundi-Catalog/default/dw68a01e93/images/840091_1.jpg)

"Hauptweg und Nebenwege" (translation: Main Paths and Sidewalks), Paul Klee, 1929

![rozin](http://www.smoothware.com/danny/woodenmirrormuseum.jpg)

["Wooden Mirror"](http://www.smoothware.com/danny/woodenmirror.html), Daniel Rozin, 1999

"830 square pieces of wood, 830 servo motors, control electronics, video camera, computer, wood frame.
Size - W 67” x H 80” x D 10” (170cm , 203cm, 25cm).
Built in 1999, this is the first mechanical mirror I built. This piece explores the line between digital and physical, using a warm and natural material such as wood to portray the abstract notion of digital pixels."

[Jim Campbell](https://www.youtube.com/watch?v=ylIYHmbM0UA)

## Repeat Loops

- comes in handy when you want to use a few lines of code to do something over and over and over
- these are great if you want to generate patterns
- good for creating gridded games
- also used in image processing

## Interactive Systems

![nike collab](https://static1.squarespace.com/static/52f8f4a0e4b0c2f2c1efab46/52f8fff7e4b065f3e46672f6/52f9048fe4b0860643b353ea/1392051360240/nike_paintSelect09.jpg?format=2500w)

["Paint with Your Feet"](http://www.yesyesno.com/nike-collab-paint-with-your-feet/), YesYesNo Team: Zach Lieberman, Emily Gobeille and Theo Watson.

["Empty Words"](http://juerglehni.com/works/empty-words), Jürg Lehni & Alex Rich, 2008

"Empty Words is a system for typesetting and producing text-based posters consisting of only holes.

Using a gently modified standard vinyl cutter and a custom made software interface, each hole is cut in sequence at a controlled speed. Similar to a Linotype machine, the resulting setup becomes a tool for the production of textual works."

["Pulse Room"](http://www.lozano-hemmer.com/pulse_room.php), Rafael Lozano-Hemmer, 2006

[Camille Utterback & Romy Achituv](https://www.youtube.com/watch?v=f_u3sSffS78), "Text Rain", 1999

["Hektor"](http://juerglehni.com/works/hektor), Jürg Lehni & Uli Franke, 2002

## What are Functions?
- Functions are a means of taking the parts of our program and separating them
into modular pieces, making the code easier to read and understand (making your
future self happier) as well as revise
- They perform tasks or calculations (aka procedures or methods)
- Calling a function is same as writing line(), rect(), fill(). (these are
built-in functions) vs. user-defined functions
- modularity - functions break down larger programs into smaller parts - makes
code more manageable and readable
- reusability- allows us to code without having to retype everything
- 3 parts: return type(void, int, float, boolean), function name(whatever you want), arguments (parameters or values , passed into the function (variable declaration)
- written like:
returnType functionName(arguments){
 //code body of function
}

## What's an Array?
An array is a list of variables that share a common name. Arrays are useful because they make it possible to work with more
variables without creating a new name for each one. This makes the code shorter, easier to read, and more convenient to
update.
- useful when a program has many elements to keep track of
- Each item in an array is called an element, and each has an index value to mark its position within the array. Just like
coordinates on the canvas, index values for an array start counting from 0.

## Assignment
Create a repeat pattern using Processing that uses variations of simple visual elements many times.

- Make use of an array.
- Use while() or for() to iterate through the array.
- Include one custom function.

## Resources
[More Examples of Algorist's works on dada](http://dada.compart-bremen.de/item/collective/1)
