PImage doge; //so declared

void setup() {
  size(600, 600);
  background(246, 174, 158);
  doge = loadImage("doge.jpg"); //very instantiated
}

void draw() {
  imageMode(CENTER); //much centered
  image(doge, width/2, height/2, mouseX, mouseY);  
}
