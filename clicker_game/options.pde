void option() {
  background(220);
  strokeWeight(1);
  fill(0);
  textSize(100);
  text("Pick a character:", 400,50);
  fill(200);
  tactile(100,200,220,220);
  rect(100,200,220,220);
  image(target1, 210,310, 200, 200);
  tactile(385,200,220,220);
  rect(385,200, 220, 220);
  image(target2, 500,310, 200 ,200);
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
  selectedChar = default1;
  
  if (target1On == true) {
    image(target1, 400,600,100+imageSize,100+imageSize);
  } else {
   
  }
  if (target2On == true) {
     image( target2, 400, 600, 100+imageSize, 100+imageSize); 
  }
  
}
  
void mouseDragged() {
  sliderControl();
}


void optionsClicks() {
  if (mouseX > 100 && mouseX<320 && mouseY > 200 && mouseY <420) {
     target1On = true;
     target2On = false;
     selectedChar= target1;
  }
    if (mouseX > 385 && mouseX<605 && mouseY > 200 && mouseY <420) {
     target2On = true;
     target1On = false;
     selectedChar = target2;
    }
  if ( mouseX >645 && mouseX < 755 && mouseY > 670 && mouseY <730 ) {
    mode = GAME;
    d = 100+imageSize;
  }
}
