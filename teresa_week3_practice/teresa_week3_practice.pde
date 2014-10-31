float ballX = 250;
float ballY;
float speed;
float sz = 10;


void setup(){
  size(500,500);
  
}

void draw(){
  background(255);
  ellipse(ballX, ballY, sz, sz);
  
  ballY = ballY+speed;
  
  if(ballY >= height) {
    speed = -5;
  }
  else if(ballY <= 0) {
    speed = 10;
  }
}
