PImage spacePic;

void setup() {
  size(800, 450);
  spacePic = loadImage("space.jpg");
}

void draw() {
  loadPixels();

  for (int x = 0; x < spacePic.width; x++) {
    for (int y = 0; y < spacePic.height; y ++) {
      int loc = x + y*spacePic.width;

      float r = red (spacePic.pixels[loc]);
      float g = green (spacePic.pixels[loc]);
      float b = blue (spacePic.pixels[loc]);

      float adjustBrightness = map(mouseX, 0, width, 0, 8);
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;

      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);

      color c = color(r, g, b);
      pixels[loc] = c;
    }
  }

  updatePixels();
}
