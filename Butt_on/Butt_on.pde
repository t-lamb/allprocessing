Button butt = new Button(50, 50, 100, 50);

void setup() {
  size(640, 320);
    background(0);
}

void draw() {

  butt.display();
}

void mousePressed() {
  butt.touch();
}
