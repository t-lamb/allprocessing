//declare b1 as Box object
Box b1;
//create array with all 6 boxes
Box[] boxArr = new Box[6];

float mx;
float my;

void setup(){
  size(600,800);
  background(0);
  
  //create a Box called b1 and set position
  b1 = new Box(mx,my);
  
  //set b1 as first element in boxArr
  boxArr[0] = b1;
  boxArr[1] = new Box(b1.x-100, b1.y-100);
  boxArr[2] = new Box(b1.x-100, b1.y+200);
  boxArr[3] = new Box(b1.x, b1.y-100);
  boxArr[4] = new Box(b1.x, b1.y+200);
  boxArr[5] = new Box(b1.x+200, b1.y-100);
 
}

void draw(){
   
  for(int i = 0; i < boxArr.length; i++){
    boxArr[i].display(mouseX, mouseY);
  }
}
