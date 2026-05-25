void gameover() {
  background(187,203,203);
  fill(0);
  
  textSize(120);
  text("GAMEOVER", 400, 200);
  
  textSize(40);
  text("HIGH SCORE:" + highScore, 400, 500);
}

void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}
