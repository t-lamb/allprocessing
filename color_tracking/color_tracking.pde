import processing.video.*;
Capture video;
//the color we're searching for
color trackColor;

void setup() {
  size(320, 240);
  video = new Capture(this, width, height);
  video.start();
  //track red
  trackColor = color(255, 0, 0);
}

void draw() {
  if (video.available()) {
    video.read();
  }
  video.loadPixels();
  image(video, 0, 0);

  //high number that first pixel can beat
  float worldRecord = 500;

  //x and y coordinates of closest color
  int closestX = 0;
  int closestY = 0;

  //loop through every pixel
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      int loc = x + y*video.width;
      //find r,g,b of current color and tracked color
      color currentColor = video.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);
      //find difference in colors using distance function
      float d = dist(r1, g1, b1, r2, g2, b2);

      //if current color is more similar to tracked color,
      //save new pixel location
      if (d < worldRecord) {
        worldRecord = d;
        closestX = x;
        closestY = y;
      }
    }
  }
  if (worldRecord < 10){
    //draw a circle at tracked pixel
    fill(trackColor);
    strokeWeight(4.0);
    stroke(0);
    ellipse(closestX, closestY, 16,16);
  }
}

void mousePressed(){
  //click mouse in new area to reset tracked color
  int loc = mouseX + mouseY*video.width;
  trackColor = video.pixels[loc];
}
