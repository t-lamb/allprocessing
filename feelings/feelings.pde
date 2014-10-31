PFont f;
String question = "What do you want to talk about?";
String typing = "";
String saved = "";

void setup(){
  size (300,200);
  f = createFont("Arial", 16);
}

void draw(){
  background(255);
  int indent = 25;
  
  textFont(f);
  fill(0);
  
  if (saved == ""){
  text(question, indent, 40);
  } else {
    text("How does "+ saved +" make you feel?" , indent, 40);
  }
  
  text(typing, indent, 90);
  
}

void keyPressed(){
  if (key == '\n') {
    saved = typing;
    typing = "";
  } else {
    typing = typing + key;
  }
}
  
