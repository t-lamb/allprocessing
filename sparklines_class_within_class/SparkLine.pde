class SparkLine {
  // An array of Vertex objects
  Vertex [] vertices = new Vertex [numCols];
  // The y-value of the line
  float row;
  // Width of each "column" (horizontal gap between vertices)
  float xOffset;


  SparkLine(float _row) {
    row = _row;
    // Calculate the column width so vertices are evenly spread out across the screen
    xOffset = width/vertices.length;

    // Initialize the vertices for this line at a random location
    for (int x = 0; x < vertices.length; x++) {
      vertices[x] = new Vertex (x*xOffset, row, random(1));
    }
  }

  void move() {
    for (Vertex v : vertices) {
      v.move();
    }
  }

  // Draw the vertices for this line
  void display() {
    beginShape();
    for (Vertex v : vertices) {
      v.display();
    }
    endShape();
  }
}
