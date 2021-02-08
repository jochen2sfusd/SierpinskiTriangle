public void setup() {
  size(1000, 900);
  background(0);
  noStroke();
}
public void draw() {
  noStroke();
  sierpinski(0,500,500);
  sierpinski(500,500,500);
  stroke(255);
  strokeWeight(10);
  noFill();
  arc(500, 800, 900, 100, PI+QUARTER_PI, PI+HALF_PI);
}
public void sierpinski(int x, int y, int len) {
  if(len <= 20) {
    triangle(x, y, x+len/2, y-len, x+len, y);
  }
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
