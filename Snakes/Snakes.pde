//declare arrays for x and y positions 
int[] xpos = new int[50];
int[] ypos = new int[50];

void setup() {
  size(255,255);
  
  //initialize all array elements at 0
  for (int i = 0; i < xpos.length; i++) {
    xpos[i] = 0;
    ypos[i] = 0;
  }
}

void draw() {
  background(255);
  
  //shift array values over 1
  //stop at next to last element 
  for (int i = 0; i < xpos.length - 1; i++) {
    xpos[i] = xpos[i + 1];
    ypos[i] = ypos[i + 1];
  }
  
  //set x and y positions to last mouse location
  xpos[xpos.length - 1] = mouseX;
  ypos[ypos.length - 1] = mouseY;

  //draw
  for (int i = 0; i < xpos.length; i++) {
    noStroke();
    fill(255 - i*5);
    ellipse(xpos[i], ypos[i], 32, 32);
  }
}
