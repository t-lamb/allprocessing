import processing.video.*;
Capture video;
int pixSize = 8;

void setup() {
   size(640, 480);
   video = new Capture(this, 80, 60);
   video.start();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
    
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      
      color c = video.pixels[x + y*video.width];
      fill(c);
      noStroke();
      rect(pixSize*x,pixSize*y,pixSize,pixSize);
    }
  }

}
