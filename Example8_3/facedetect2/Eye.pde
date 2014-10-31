class Eye {
  float eyeX, eyeY, eyeW, eyeH;
  float blinkSpeed = 1;

  Eye(float _eyeX, float _eyeY, float _eyeW, float _eyeH) {
    eyeX = _eyeX;
    eyeY = _eyeY;
    eyeW = _eyeW;
    eyeH = _eyeH;
  }

  void display() {
    noStroke();
    fill(222, 213, 157);
    ellipse( eyeX, eyeY, eyeW, eyeH);
    fill(162, 54, 56);
    ellipse( eyeX, eyeY, eyeW/2, eyeH);
    fill(20);
    ellipse( eyeX, eyeY, eyeW/5, eyeH*0.8);
  }

  // void blink() {
  //   for (int i = 0; i < 200; i++) {
  //     eyeH -= blinkSpeed;
  //     if (eyeH < 0 || eyeH > eyeW/2) {
  //       blinkSpeed *= -1;
  //     }
  //   }
  // }
}
