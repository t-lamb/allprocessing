//create stripes array
Stripe[] stripes = new Stripe[10];

void setup() {
  size(200, 200);

  //initialize all Stripes in stripes array
  for (int i = 0; i < stripes.length; i++) {
    stripes[i] = new Stripe();
  }
}

void draw() {
  background(100);
  //for loop goes creates method for each Stripe element 
  for (int i = 0; i< stripes.length; i++) {
    stripes[i].rollover(mouseX, mouseY);
    stripes[i].move();
    stripes[i].display();
  }
}
