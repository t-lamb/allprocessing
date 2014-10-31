import processing.video.*; //video library
import gab.opencv.*; //face detection library
// We need Java rectangles
import java.awt.Rectangle;
// Library object
OpenCV opencv;
// Capture object
Capture cam;

// Array of faces found
Rectangle[] faces;

PImage fog;
Eye left;
Eye right;

Fog fogObj;

void setup() {
  size(700, 700, P2D);
  //create image and eyes
  fog = loadImage("fog.png");
  fogObj = new Fog(fog);
  
  left = new Eye(510, 490, 30, 15);
  right = new Eye(550, 490, 30, 15);

  // Start capturing
  cam = new Capture(this, 320, 240);
  cam.start();
  // Create the OpenCV object
  opencv = new OpenCV(this, cam.width, cam.height);
  // Which "cascade" are we going to use?
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  //opencv.loadCascade(OpenCV.CASCADE_EYE);  
  //opencv.loadCascade(OpenCV.CASCADE_NOSE);
}

// New images from camera
void captureEvent(Capture cam) {
  cam.read();
}

void draw() { 
  println(frameRate);
  background(0);
  // We have to always "load" the camera image into OpenCV 
  // opencv.loadImage(cam);
  // // Detect the faces
  // faces = opencv.detect();
  // Draw the image

 image(fog, 0, 0);
 fogObj.sample();
  // left.display();
  // right.display();

  // // If we find faces, draw them!
  // if (faces != null) {
  //   for (int i = 0; i < faces.length; i++) {
  //     image(fog, 0, 0);
  //   }
  // }
}
