PImage fog;
Eye left;
Eye right;

void setup() {
  size(600, 600);
  fog = loadImage("fog.png");
  left = new Eye(440, 415, 22, 10);
  right = new Eye(475, 415, 22, 10);
}

void draw() {
  image(fog, -5, -5, 610, 610);
  left.display();
  right.display();
}

void mousePressed (){
  left.blink();
  right.blink();
}
