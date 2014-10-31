import processing.video.*;
Capture video;
int pointillize = 16;

void setup(){
 size(320, 240);
 background(255);
 video = new Capture(this, 320, 240);
 video.start();
 smooth();
}

void captureEvent (Capture video) {
  video.read();
}

void draw(){
  int x = int(random(video.width));
  int y = int(random(video.height));
  int loc = x + y*video.width;
  
  video.loadPixels();
  float r = red(video.pixels[loc]);
  float g = green(video.pixels[loc]);
  float b = blue(video.pixels[loc]);
  
  noStroke();
  fill(r, g, b, 100);
  ellipse(x, y, pointillize, pointillize);
}
