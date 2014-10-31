class Vertex {
  // x, y, row, speed location this vertex
  float x, y, row, speed;
  
  // What's the difference between y and row here?
  Vertex(float _x, float _y, float _speed) {
    x = _x;
    row = _y;
    y = _y;
    speed = _speed;
  }
  
  // Move the vertex
  void move() {
    y += speed;
    
    // If the vertex gets more than 5 pixels away from the row, turn back!
    if (abs(y-row) > 5) {
      speed *= -1;
    }
  }

  // Draw the vertex
  void display() {
    vertex(x, y);
  }

}
