//Rollovers
float bright1 = 255;
float bright2 = 255;
float bright3 = 255;
float bright0 = 255;

void setup(){
  size(200,200);
}

void draw(){
  background(0);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);

  
  if(mouseX<width/2 && mouseY<height/2){
  //bright0 = 255;
  fill(bright0);
  rect(0, 0, width/2, height/2);
  }
  
  else if(mouseX>width/2 && mouseY<height/2){
  //bright1 = 255;
  fill(bright1);
  rect(width/2, 0, width/2, height/2);
  }
  
  else if(mouseX>width/2 && mouseY>height/2){
  //bright2 = 255;
  fill(bright2);
  rect(width/2, height/2, width/2, height/2);
  }
  
  else if(mouseX<width/2 && mouseY>height/2){
  //bright3 = 255;
  fill(bright3);
  rect(0, height/2, width/2, height/2);
  }
  
  //set fade
  bright0 = bright0 - 1;
  bright1 = bright1 - 1;
  bright2 = bright2 - 1;
  bright3 = bright3 - 1;
}
