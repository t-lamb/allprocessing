Car myCar1;
Car myCar2; // Two objects!

void setup() {
  size(640,360);
  //constructors
  myCar1 = new Car(color(51),0,100,2); // Parameters go inside the parentheses when the object is constructed.
  myCar2 = new Car(color(151),0,300,1);
}

void draw() {
  background(255);
  myCar1.move();
  myCar1.display();
  myCar2.move();
  myCar2.display();
}
