void move() {
  y+= speedy;
  if (y > width) {
    y = 0;
  }
}

void bounce(speedy) {
  if (y >= height - diameter/2 || y <= 0 + diameter/2)
    speedy = speedy * -1;
}

void display(float x, float y, float diameter) {
  ellipse(x, y, diameter, diameter);
}
