// Example 6-1: Many2 lines 
   
size(200,200);  
background(255);

// Legs  
int y = 80; 
int x = 50; // first x value
int spacing = 10;
int y2 = 60; 
int endLegs = 150;

stroke(0);  

//STEP 3: while loop
while (x<= endLegs) {
  line(x, y, x, y2);
  x = x + spacing;
}

  
// STEP 2: enter lines with spacing
// line( x, y, x, y2);

// x = x + spacing;
// line( x, y, x, y2);

// x = x + spacing;
// line( x, y, x, y2);

// x = x + spacing;
// line( x, y, x, y2);

// x = x + spacing;
// line( x, y, x, y2);

// x = x + spacing;
// line( x, y, x, y2); 

// x = x + spacing;
// line( x, y, x, y2);  

// x = x + spacing;
// line( x, y, x, y2);

// x = x + spacing;
// line( x, y, x, y2);

// x = x + spacing;
// line( x, y, x, y2);

// x = x + spacing;
// line( x, y, x, y2);

//STEP 1: initial code
// line(50,60,50,80);  
// line(60,60,60,80);  
// line(70,60,70,80);  
// line(80,60,80,80);  
// line(90,60,90,80);  
// line(100,60,100,80);  
// line(110,60,110,80);  
// line(120,60,120,80);  
// line(130,60,130,80);  
// line(140,60,140,80);  
// line(150,60,150,80);
