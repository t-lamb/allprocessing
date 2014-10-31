class SparkLine {
  // An array to remember vertex values for a line
  float [] vertices = new float [100];
  // The y-value of the line
  float y;
  // Width of each "column" (horizontal gap between vertices)
  float xOffset;

  
  SparkLine(float _y) {
    y = _y;
    
    // Initialize the vertices for this line at a random location
    for (int x = 0; x < vertices.length; x++) {
      vertices[x] = random(-5, 5);
    }
    
    // Calculate the column width so vertices are evenly spread out across the screen
    xOffset= width/vertices.length;
  }
  
  // Move the vertices for this line
  void move() {
    for (int x = 0; x < vertices.length; x++) {
      vertices[x] += random(-1, 1);
    }
  }
  
  // Draw the vertices for this line
  void display() {
    beginShape();
    for (int x = 0; x < vertices.length; x++) {
      vertex(x*xOffset, y + vertices[x]);
    }
    endShape();
  }
}
