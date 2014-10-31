class Box {
  float x;
  float y;

  Box(float _x, float _y) {
    x = _x;
    y = _y;
  }

  void display(float x, float y){
    rect(x, y, 30, 30);
    println(x,y);
  }
}
