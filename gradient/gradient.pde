
void setup() {
  size(255, 255);
  loadPixels();
  //loop through all pixel columns
  for (int x = 0; x < width; x++) {
    //loop through all pixel rows
    for (int y = 0; y < height; y++) {
      //find 1D location
      int loc = x + y * width;
        pixels[loc] = color(dist(width/2, height/2, x, y));
    }
  }
  updatePixels();
}
