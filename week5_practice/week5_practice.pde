float x, y, speedy, diameter;

void setup() {
  size(600, 600);
  x = width/2;
  y = 0;
  speedy = 5;
  diameter = 50;
}

void draw() {
  move();
  bounce();
  display();
}
