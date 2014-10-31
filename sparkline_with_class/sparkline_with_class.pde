SparkLine [] sparklines;

void setup() {
  size(800, 800);
  sparklines = new SparkLine[100];
  
  // Calculate the height of each row so lines are spread out evenly down the screen
  float yOffset = height/sparklines.length;
  
  // Initialize the lines and assign
  for (int y = 0; y < sparklines.length; y++) {
    // What is this y*yOffset business?
    sparklines[y] = new SparkLine(y*yOffset);
  }
}

void draw() {
  
  // Move and draw all the lines
  for (SparkLine s : sparklines) {
    s.move();
    s.display();
  }
}
