class Square {
  float x, y, r, g, b, opacity, rr, gg, bb;

  Square(float TempX, float TempY) {
    x= TempX;
    y= TempY;
    r=random(255);
    g=random(255);
    b=random(255);
  }
  
  void display(float x, float y, float k) {
        stroke(0);
        fill(r, g, b, k);
        rect(x-50, y-50, 95, 95);
        rect(x-150, y-150, 95, 95);
        rect(x-150, y+150, 95, 95);
        rect(x-50, y-150, 95, 95);
        rect(x-50, y+150, 95, 95);
        rect(x+150, y-150, 95, 95);
  }

}
