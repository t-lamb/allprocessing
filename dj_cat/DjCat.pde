class DjCat {
  PImage catPic;
  float x, y, spin;
  float speed = 1;
  float r = 255;
  float g = 255;
  float b = 255;

  DjCat(String filename, float _x, float _y) {
    //load image, initialize variables
    catPic = loadImage(filename);
    x = _x;
    y = _y;
    spin = 0;
  }

  void display() {
    //set image location
    translate(x, y);
    rotate(spin);
    imageMode(CENTER); 
    
    //change color
    tint(r, g, b);
    r = mouseX/3;
    g = mouseY/3;
    
    //initialize catPic variable
    image(catPic, 0, 0);
  }

  void move() {
    x += speed;
    spin += 0.01;
    
    //changes direction when hits the edge
    if (x > width || x < 0) {
      speed *= -1;
    }
  }
}
