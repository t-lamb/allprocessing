class Square {
  float x;
  float y;
  float r;
  float g; 
  float b;
  float opacity;
  float rr;
  float gg;
  float bb;
  //float k;

  // int isDisplaying;

  Square(float TempX, float TempY, float TempR, float TempG, float TempB) {
    x= TempX;
    y= TempY;
    // r= TempR;
    // g= TempG;
    // b= TempB;
    r=random(255);
    g=random(255);
    b=random(255);
    //k=0;
  }
  void display(float x, float y, float k) {

        stroke(0);
        fill(r, g, b, k);///1000);
        rect(x-50, y-50, 95, 95);
        rect(x-150, y-150, 95, 95);
        rect(x-150, y+150, 95, 95);
        rect(x-50, y-150, 95, 95);
        rect(x-50, y+150, 95, 95);
        rect(x+150, y-150, 95, 95);
        println(k);
       
     //}
    //}
    // isDisplaying=1;
  }


  //void move(){

  //}
  // void changeOpacity(float newOpacity)
  // {

  //   fill(r,g,b,newOpacity);
  // }
}
