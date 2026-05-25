

void pause(){ 
  //pauseOn = false;
  fill(255);
   stroke(0);
   circle(100, 100, 100);
  theme.pause();
  text("PAUSE",400,400);
   if( pauseOn == true) {
   image(pauseImg, 100, 100, 100, 100);
 } 
   if (pauseOn == false) {
   image(resumeImg,100,100,100,100);
 }
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100)<50) {
    pauseOn = true;
    mode = GAME;
    theme.play();
    
  }
  
}
