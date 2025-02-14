int maxDepth = 1;

void setup() {
  size(600, 600);
  background(0);
  noFill();
  stroke(255);
  frameRate(1);
}

void draw() {
  if (maxDepth <= 9) {
    background(0);
    drawFractal(width / 2, height / 2, 200, maxDepth);
    maxDepth++;
  }
}

void drawFractal(int x, int y, int size, int depth) {
  if (depth > 0) {
    rectMode(CENTER);
    rect(x, y, size, size);

    int newSize = size / 2;

    drawFractal(x - newSize, y - newSize, newSize, depth - 1);
    drawFractal(x + newSize, y - newSize, newSize, depth - 1);
    drawFractal(x - newSize, y + newSize, newSize, depth - 1);
    drawFractal(x + newSize, y + newSize, newSize, depth - 1);
  }
}
