//declare new snake object
Snake hissy;

void setup() {
  size(255, 255);

  hissy = new Snake();
}

void draw() {
  background(255);
  
  hissy.tail();
  hissy.display();
}
