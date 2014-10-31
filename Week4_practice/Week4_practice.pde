void setup() {
  
  size(600, 600);
  background(255);
  stroke(0);

  //drawing a grid with lines
  for (int i = width/3; i <= width; i = i + width/3) {
    line(i, 0, i, height);
    line(0, i, width, i);
  }
  
  //drawing a grid with rectangles
  for (int y = 0; y <= height; y = y + height/3) {
    for (int x = 0; x <= width; x = x + width/3) {
      rect(x, y, width/3, height/3);
    }
  }
  
}
