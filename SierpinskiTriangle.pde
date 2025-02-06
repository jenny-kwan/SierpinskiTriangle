color currentColor = color(247, 178, 197);
color darkerColor = color(216, 185, 237);

public void setup() {
  size(800, 800);
  background(255, 227, 235);
  noLoop();
}

public void draw() {
  background(255, 227, 235);
  fill(currentColor);
  noStroke();
  sierpinski(100, 700, 600);
}

public void mouseDragged() {
  if (currentColor == color(247, 178, 197)) {
    currentColor = darkerColor;
  } else {
    currentColor = color(247, 178, 197);
  }
  redraw();
}

public void sierpinski(int x, int y, int len) {
  if (len <= 20) {
    drawSimpleHeart(x + len / 2, y - len / 2, len);
  } else {
    int halfLen = len / 2;
    sierpinski(x, y, halfLen);
    sierpinski(x + halfLen, y, halfLen);
    sierpinski(x + halfLen / 2, y - halfLen, halfLen);
  }
}

public void drawSimpleHeart(int x, int y, int size) {
  int r = size / 4;
  ellipse(x - r, y, r * 2, r * 2);
  ellipse(x + r, y, r * 2, r * 2);
  triangle(x - size / 2, y, x + size / 2, y, x, y + size);
}
