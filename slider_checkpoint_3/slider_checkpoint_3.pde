color softLinen = #E8EBE4;
color lightPurple = #D2D5DD;
color paleSlate = #B8BACF;
color lavenderGrey = #999AC6;
color greyOlive = #798071;
float circleSize;
float sliderY;

void setup() {
  size(800,600);
  strokeWeight(5);
  stroke(greyOlive);
  fill(greyOlive);
  sliderY = 300;
  circleSize=0;
}

void draw() {
  background(paleSlate);
  fill(greyOlive);
  stroke(greyOlive);
  line(100,100,100,500);
  circle(100,sliderY,50);
  fill(lavenderGrey);
  stroke(lavenderGrey);
  circle(500,300,circleSize);
}

void mouseDragged() {
 sliderControl(); 
}

void mouseReleased(){
   sliderControl();
}

void sliderControl() {
  if (mouseY > 100 && mouseY < 500 && mouseX > 75 && mouseX < 125) {
    sliderY = mouseY;
  }
  
  circleSize = map(sliderY, 100, 500, 0, 300);
}
