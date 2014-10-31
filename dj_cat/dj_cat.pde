DjCat catPic;

//create randomArr array for RandomStar objects
RandomStar[] randomArr = new RandomStar[160];

RandomStar a;

void setup() {
  size(765, 765);
  catPic = new DjCat("cat.png", 100, width/2);

  //create random stars
  for (int a = 0; a < randomArr.length; a++) {
    randomArr[a] = new RandomStar(random(width), random(height), random(3));
  }
}

void draw() {
  background(0);

  //use randomArr array to draw RandomStars
  for (int a = 0; a < randomArr.length; a++) {
    randomArr[a].display();
  }
  
  for (int i = 0; i < 10; i++){
  a = new RandomStar(random(width), random(height), random(1,5));
  a.display();
  }
  
  catPic.display();
  catPic.move();
}
