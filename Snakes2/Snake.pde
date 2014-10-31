class Snake {

  //declare arrays for x and y positions 
  int[] xpos = new int[50];
  int[] ypos = new int[50];
  int i;

  Snake() {
    //initialize all array elements at 0
    xpos[i] = 0;
    ypos[i] = 0;
  }

  void tail() {
    //store last mouse position in array
    //set new xpos and ypos to last mouse position
    xpos[xpos.length - 1] = mouseX;
    ypos[ypos.length - 1] = mouseY;

    //shift array values over 1
    //stop at next to last element 
    for (int i = 0; i < xpos.length - 1; i++) {
      xpos[i] = xpos[i + 1];
      ypos[i] = ypos[i + 1];
    }
  }

  void display() {
    for (int i = 0; i < xpos.length; i++) {
      noStroke();
      fill(255 - i*5, 150 - i*2, 60 - i+70);
      ellipse(xpos[i], ypos[i], i, i);
    }
  }
}
