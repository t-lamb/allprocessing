class Stripe {
  float x; //x position
  float speed;
  float w; //width
  boolean mouse;

  Stripe() {
    x = 0; //stripes start at 0
    speed = random(1);  //random speed
    w = random(10, 30); //random width
    mouse = false;      //by default mouse does not affect stripe
  }

  void display() {
    if (mouse) {
      fill(255);
    } else {
      fill(255, 100);
    } 
    noStroke();
    rect(x, 0, w, height);
  }

  void move() {
    x += speed;
    if (x > width + 20) { 
      x = -20;
    }
  }

  void rollover(int mx, int my) {
    //stripes range is between x and x +w
    //check for mouseX overlapping stripe 
    if (mx > x && mx < x + w) {
      mouse = true;
    } else {
      mouse = false;
    }
  }
}
