import processing.video.*;
Capture video;
//the color we're searching for
color trackColor;

int threshold = 20;
int aveX, aveY;
float objectR = 255;
float objectG = 0;
float objectB = 0;
boolean debug = true;
int lastTime, ellapsedTime;

void setup() {
  size(320, 240);
  video = new Capture(this, width, height);
  video.start();

  //track red
  trackColor = color(0, 0, 0);
}

void draw() {
  if (video.available()) {
    ellapsedTime = millis() - lastTime;
    lastTime = millis();
    video.read();
    int totalFoundPixels = 0;
    int sumX = 0;
    int sumY = 0;
    for (int x = 0; x < video.width; x++) {
      for (int y = 0; y < video.height; y++) {
        int offset = x + y*video.width;
        int thisColor = video.pixels[offset];

        //pull pixels form each color
        float r = red(thisColor);
        float g = green(thisColor);
        float b = blue(thisColor);

        //find difference in colors using distance function
        float d = dist(r, g, b, objectR, objectG, objectB);
        if ( d < threshold) {
          sumX = sumX + x;
          sumY = sumY + y;
          totalFoundPixels++;
          if (debug) video.pixels[offset] = 0xf000000;
        }
      }
    }
    image(video, 0, 0);
    if (totalFoundPixels > 0) {
      aveX = sumX/totalFoundPixels;
      aveX = sumX/totalFoundPixels;
      ellipse(aveX-10, aveY-10, 20, 20);
    }
  }
}

void mousePressed() {
  int offset = mouseY* video.width + mouseX;
  int thisColor = video.pixels[offset];
  objectR = red(thisColor);
  objectG = green(thisColor);
  objectB = blue(thisColor);
}

void keyPressed() {
  if (key == '-') {
    threshold--;
  } else if (key == '=') {
    threshold++;
  } else if (key == 'd') {
    background(255);
    debug = !debug;
  } else if (key == 't') {
    println("Time Between Frames" + ellapsedTime);
  }
}
