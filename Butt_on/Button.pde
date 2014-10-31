class Button {
  float x;
  float y;
  float w;
  float h;
  boolean on;

  Button(float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    on = false;
  }

  void display() {
    noStroke();
    fill(255, 0, 0);
    rect(x, y, w, h);
  }

  void touch() {
    if (on) {
      background(255);
    } else {
      background(0);
    }

    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
      on = !on;
    }
  }

}
