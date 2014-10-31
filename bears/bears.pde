PImage bears;
PImage destination;

void setup() {
  size(480, 262);
  bears = loadImage("bears.jpg");
  //create new image
  destination = createImage(bears.width, bears.height, RGB);
}

void draw() {
  //load pixels of both images
  bears.loadPixels();
  destination.loadPixels();

  for (int x = 0; x < width; x++) {
    for (int y =0; y < height; y++) {
      int loc = x + y*bears.width;
      destination.pixels[loc] = bears.pixels[loc];
    }
  }
  destination.updatePixels();
  //display new image
  image(destination, 0, 0);
}
