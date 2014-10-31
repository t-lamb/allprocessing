// An array to "remember" vertex values
float [] vertices = new float [100];
  // Width of each "column" (horizontal gap between vertices)
float xOffset;

void setup() {
  size(800, 800);
  
  // Initialize the array with random values
  for(int i = 0; i < vertices.length; i++){
   vertices[i] = random(-10, 10); 
  }
  
  // Calculate the column width so the vertices are laid out evenly across the screen
  xOffset = width/vertices.length;
}

void draw() {
  // Draw a jagged line using vertex()
  beginShape();
  for (int x = 0; x < vertices.length; x++) {
    // Offset by a small random amount every frame
    vertices[x] += random(-1, 1);
    vertex(x*xOffset, height/2 + vertices[x]);
  }
  endShape();
}
