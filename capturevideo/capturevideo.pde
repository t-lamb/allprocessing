import processing.video.*;

//capture is the class
Capture video1;

void setup(){
  size(320,240);
  println(Capture.list());
  
  video1 = new Capture(this, 320, 240);
  video1.start();
}

void captureEvent(Capture video2){
  //read image from camera
  video2.read();
}

void draw(){
  //video is a series of
  image(video1, 0, 0);
}
