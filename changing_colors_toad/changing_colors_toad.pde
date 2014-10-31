// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-7: Displaying the pixels of an image

PImage img;

void setup() {
  size(600, 339);
  img = loadImage("hypnotoad.png");
}

void draw() {
  loadPixels();

  // We must also call loadPixels() on the PImage since we are going to read its pixels.
  img.loadPixels();
  for (int y = 0; y < height; y++ ) {
    for (int x = 0; x < width; x++ ) {
      int loc = x + y*width;
      // The functions red(), green(), and blue() pull out the three color components from a pixel.
      float r = red(img.pixels [loc]); 
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      float d = dist(width, height, x, y);

      // Set the display pixel to the image pixel
      pixels[loc] = color(r+mouseX, g+mouseY, b+d);
    }
  }

  updatePixels();
}
