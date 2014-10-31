// Exercise 6-1a: Fill in the blanks in the code to 
// recreate the following screenshots.

//exercise a
// size(200, 200); 
// background(255); 
// int y = 0; 

// while (y < height) { 
//   stroke(0);
//   line(0, y, width, y);  
//   y = y + 10;
// } 

//exercise b
// size (200,200);
// background(255);

// int y = 0;
// float w = width;

// while (w > 0) {
//   stroke(0);
//   fill(w);
//   ellipse(width/2, height/2, w, w);
//   w = w - 20;
// }

//exercise b as for loop
// size (200,200);
// background(255);

// int y = 0;

// for (float w = width; w > 0; w = w - 20) {
//   stroke(0);
//   fill(w);
//   ellipse(width/2, height/2, w, w);
// }
  
//tribute to jasper johns
size (300, 350);
background(0);
int a = width;
int spacing = 50;

noStroke();
fill(180, 20, 20);
rect(0, height - a, a, a);

while (a > 0) {
fill (20, 20, 180);
ellipse(width/2, height - width/2, a - spacing, a - spacing);

fill (180, 180, 20);
ellipse(width/2, height - width/2, a - 2*spacing, a - 2*spacing );

a = a - 2*spacing;
}

// int w = width - 40; 

// noStroke();
// //fill(180, 20, 20);
// //rect(0, height - w, w, w); //makes a square attached to bottom

// for(int spacing = 50; w > 0; w = w - 2*spacing) {
// fill (20, 20, 180); //blue circle
// //centers within square
// ellipse(width/2, height - width/2, w - spacing, w - spacing);

// fill (180, 180, 20); //yellow circle
// ellipse(width/2, height - width/2, w - 2*spacing, w - 2*spacing );

// }
