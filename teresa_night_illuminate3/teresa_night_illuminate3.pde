int shootingX = 100;
int shootingY = 200;
int shootingX2 = 900;
int shootingY2 = 300;
int shootstroke = 0;
int shootstroke2 = 0;

int s = 6; //small stars
int m = 8; //medium stars
int l = 10; //large stars

//set color
int r = 236;
int g = 246;
int b = 245;

void setup() {
  size(1000, 600);
  background(48, 60, 71);

  randomStars(160);

  //constellations
  fill(r, g, b, 80);
  ursaMajor(145, 200);
  ursaMinor(800, 190);

  //draw larger ellipses for glow 
  s = 20; //small stars
  m = 24; //medium stars
  l = 30; //large stars

  fill(r, g, b, 10);
  ursaMajor(145, 200);
  ursaMinor(800, 190);
}

void draw() {
  s = 6; //small stars
  m = 8; //medium stars
  l = 10; //large stars

  fill(r, g, b, 10);
  ursamajorGlow(145, 200);
  ursaminorGlow(800, 190);

  //surprise shooting star right
  stroke(236, 246, 245, shootstroke);
  strokeWeight(3);
  if (mouseX>=900 && mouseX<width && mouseY>=500 && mouseY<height) {
    point(shootingX, shootingY);
    shootingX = shootingX + 5;
    shootingY = shootingY + 2;
    shootstroke = shootstroke + 1;
  }  


  //surprise shooting star left
  stroke(236, 246, 245, shootstroke2);
  strokeWeight(3);
  if (mouseX>0 && mouseX<=100 && mouseY>=500 && mouseY<height) {
    point(shootingX2, shootingY2);
    shootingX2 = shootingX2 - 5;
    shootingY2 = shootingY2 + 2;
    shootstroke2 = shootstroke2 + 1;
  }
}

void mousePressed(){
  
  fill(48, 60, 71);
  ursaMajor(145, 200);
  ursaMinor(800, 190); 
  
  fill(r, g, b, 80);
  ursaMajor(145, 200);
  ursaMinor(800, 190); 
  
}
