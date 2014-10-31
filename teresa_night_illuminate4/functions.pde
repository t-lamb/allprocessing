void randomStars(int starNum) {
  stroke(236, 246, 245, 80);
  for (int a=0; a<=starNum; a++) {
    strokeWeight(random(3)); 
    point(random(width), random(height));
  }
}

void ursaMajor(int x, int y) {
  noStroke();
  //1
  ellipse(x, y, m, m);
  //2
  ellipse(x+85, y+30, m, m);
  //3
  ellipse(x+110, y+85, m, m);
  //4
  ellipse(x+160, y+155, s, s);
  //5
  ellipse(x+135, y+220, l, l);
  //6
  ellipse(x+225, y+280, l, l);
  //7
  ellipse(x+280, y+230, l, l);
}


void ursaMinor(int x, int y) {
  noStroke();
  //8
  ellipse(x-310, y-110, s, s);
  //9
  ellipse(x-210, y-145, s-1, s-1);
  //10
  ellipse(x-285, y-60, s, s);
  //11
  ellipse(x-200, y-90, m, m);
  //12
  ellipse(x-110, y-88, s, s);
  //13
  ellipse(x-40, y-50, s, s);

  //polaris (the brightest star in ursa minor)
  ellipse(x, y, m, m);
  fill(r, g, b, 10);
  ellipse(x, y, l+10, l+10);
  fill(r, g, b, 5);
  ellipse(x, y, l+30, l+30);
}

void ursamajorGlow(int x, int y) {
  noStroke();
  //1
  if (dist(mouseX, mouseY, x, y)< 20) {
    ellipse(x, y, m, m);
  }
  //2
  if (dist(mouseX, mouseY, x+85, y+30)< 20) {
    ellipse(x+85, y+30, m, m);
  }
  //3
    if (dist(mouseX, mouseY, x+110, y+85)< 20) {
    ellipse(x+110, y+85, m, m);
  }
  //4
  if (dist(mouseX, mouseY, x+160, y+155)< 20) {
    ellipse(x+160, y+155, s, s);
  }
  //5
  if (dist(mouseX, mouseY, x+135, y+220)< 20) {
    ellipse(x+135, y+220, l, l);
  }
  //6
  if (dist(mouseX, mouseY, x+225, y+280)< 20) {
    ellipse(x+225, y+280, l, l);
  }
  //7
  if (dist(mouseX, mouseY, x+280, y+230)< 20) {
    ellipse(x+280, y+230, l, l);
  }
}

void ursaminorGlow(int x, int y) {
  noStroke();
  //8
  if (dist(mouseX, mouseY, x-310, y-110)< 20) {
    ellipse(x-310, y-110, s, s);
  }
  //9
  if (dist(mouseX, mouseY, x-210, y-145)< 20) {
    ellipse(x-210, y-145, s-1, s-1);
  }
  //10
  if (dist(mouseX, mouseY, x-285, y-60)< 20) {
    ellipse(x-285, y-60, s, s);
  }
  //11
  if (dist(mouseX, mouseY, x-200, y-90)< 20) {
    ellipse(x-200, y-90, m, m);
  }
  //12
  if (dist(mouseX, mouseY, x-110, y-88)< 20) {
    ellipse(x-110, y-88, s, s);
  }
  //13
  if (dist(mouseX, mouseY, x-40, y-50)< 20) {
    ellipse(x-40, y-50, s, s);
  }
  //Polaris
  if (dist(mouseX, mouseY, x, y)< 20) {
    ellipse(x, y, m, m);
  }
}
