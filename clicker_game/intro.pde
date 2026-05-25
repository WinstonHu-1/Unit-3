void intro()
{

  noStroke();
  background(220);

  fill(200);
  rect(60, 100, 700, 110);
  fill(0);
  textSize(128);
  text("Clicker Game", CENTER+400, CENTER+150);
  fill(200);
  tactile(320, 300, 165, 80);
  rect(320, 300, 165, 80);
  fill(0);
  textSize(80);
  text("Start", CENTER+400, CENTER+340);
  fill(200);
  tactile(250,450,290,80);
  rect(250, 450, 290, 80);
  fill(0);
  text("Options", CENTER+390, CENTER+480);

  theme.play();
}

void introClicks() {
  if (mouseX > 320 && mouseX < 485 && mouseY > 300 && mouseY < 380) {
   
    mode = GAME;
  }
  else if (mouseX > 250 && mouseX < 540 && mouseY > 450 && mouseY < 530) {
  
  mode = OPTIONS;
    }
  }
