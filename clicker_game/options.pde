void option() {
  background(220);
  strokeWeight(1);
  fill(0);
  textSize(100);
  text("Pick a character:", 400,50);
  fill(200);
  tactile(100,200,220,220);
  rect(100,200,220,220);
  image(nathan, 210,330, 220, 220);
  tactile(385,200,220,220);
  rect(385,200, 220, 220);
  image(monkey, 500,350, 200 ,350);
  textSize(50);
  fill(200);
  tactile(645,670,110,60);
  rect(645,670,110,60);
  fill(0);
  text("PLAY", 700, 700);
  
  stroke(0);
  strokeWeight(7);
  circle(100,sliderY,10);
  line(100, 500, 100, 700);
  
  if (nathanOn == true) {
    image(nathan, 400,575,220+imageSize,220+imageSize);
  } else {
   
  }
  if (monkeyOn == true) {
     image( monkey, 411, 611, 220+imageSize, 220+imageSize); 
  }
  
}
  
void mouseDragged() {
  sliderControl();
}


void optionsClicks() {
  if (mouseX > 100 && mouseX<320 && mouseY > 200 && mouseY <420) {
     nathanOn = true;
     monkeyOn = false;
     selectedChar= nathan;
  }
    if (mouseX > 385 && mouseX<605 && mouseY > 200 && mouseY <420) {
     monkeyOn = true;
     nathanOn = false;
     selectedChar = monkey;
    }
  if ( mouseX >645 && mouseX < 755 && mouseY > 670 && mouseY <730 ) {
    mode = GAME;
    d = 220+imageSize;
  }
}
