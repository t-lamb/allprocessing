void setup() {
  size(500, 500);
  loadPixels();
  //loop through all pixel columns
  for (int x = 0; x < width; x++) {
    //loop through all pixel rows
    for (int y = 0; y < height; y++) {
      //find 1D location
      int loc = x + y * width;
      if (x % 4 == 0) { //check for even column
      pixels[loc] = color(random(255));
      } else { //odd columns
      pixels[loc] = color(0);
      }
    }
  }
  updatePixels();
}
