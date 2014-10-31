int numRows = 100;
int numCols = 100;
SparkLine [] sparklines = new SparkLine[numRows];

float yOffset;

void setup() {
  size(800, 800);  
  // Calculate row height so lines are laid out evenly down the screen
  yOffset = height/sparklines.length;
  for (int y = 0; y < sparklines.length; y++) {
    sparklines[y] = new SparkLine(y*yOffset);
  }
}

void draw() {
  
  // Look a different way to iterate through an array
  for (SparkLine s : sparklines) {
    s.move();
    s.display();
  }
}
