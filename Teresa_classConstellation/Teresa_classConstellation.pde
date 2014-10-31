class Constellation {
  float x;
  float y;
  float diameter;
  float alpha;   //starting opacity for Constellations
  float alphaSpeed;

  Constellation(float _x, float _y, float _diameter, float _alpha) {
    x = _x;
    y = _y;
    diameter = _diameter;
    alpha = _alpha;
    alphaSpeed = 2;   //set initial speed
  }

  void display() {
    noStroke();
    fill(236, 246, 245, alpha);   //this color is hardcoded, but can be changed
    ellipse(x, y, diameter, diameter);
  }

  void glow() {
    alpha += alphaSpeed;
    if (alpha > 255 || alpha < 20) {   //does not disappear completely before returning
      alphaSpeed = alphaSpeed * -1;
    }
  }
}
