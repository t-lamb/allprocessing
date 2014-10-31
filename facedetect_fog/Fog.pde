class Fog {
  PImage img;
  float t = 0;
  Fog(PImage _img) {
    img=_img;
  }

  void sample() {
    t++;
    img.loadPixels();
    for (int x = 0; x < img.width; x+=20) {
      for (int y = 0; y < img.height; y+=20) {
        int loc = x + y*img.width;
        color c = img.pixels[loc];
        float r = red(c) + noise(t)*10;
        float g = green(c) + noise(t)*10;
        float b = blue(c) + noise(t)*10;
        noStroke();
        fill(r,g,b);
        ellipse(x,y, 20, 20);
      }
    }
  }
}
