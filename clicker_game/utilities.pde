void circleTactile( int x, int y) {
  if (dist(x, y, mouseX, mouseY) <50) {
    stroke(deepCharcoal);
  } else {
    stroke(200);
  }
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(deepCharcoal);
  } else {
    fill(200);
  }
}

void sliderControl() {
  if (mouseX > 75 && mouseX <125 && mouseY >500 && mouseY <700  ) {
    sliderY = mouseY;
  }
  imageSize = map(sliderY, 500, 700, -50, 50);
}
