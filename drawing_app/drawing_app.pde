PImage grello;
boolean grelloOn = false;

color selectedColour = #000000;
color paperWhite = #FDFDFD; // Canvas Background
color deepCharcoal = #1A1A1B; // App Background
color slateGray = #2D2D30; //Toolbars
color darkGreen = #88A096; // Accents/ tactile
color softSilver = #E1E1E1; // Text/ icons
int fillColour = 0;



void setup() {
  size (1200, 700);
  background(paperWhite);
  grello = loadImage("grello.png");
  selectedColour = darkGreen;
}

void draw() {
  fill(slateGray);
  noStroke();
  rect(0, 0, 1200, 150);
  fill(selectedColour);
  tactile(50, 50, 220, 120);
  //rect(50, 50, 220, 120);
  //image(grello, 50, 50, 220, 100);
  strokeWeight(1);
  fill(#FF0000);
  circleTactile( 100, 50);
  circle(100, 50, 50);
  fill(#00FF00);
  circleTactile( 100, 110);
  circle(100, 110, 50);
  fill(#0000FF);
  circleTactile( 160, 50);
  circle(160, 50, 50);
  fill(#FFFF14);
  circleTactile( 160, 110);
  circle(160, 110, 50);
  fill(#FB4D07);
  circleTactile(220, 50);
  circle(220, 50, 50);
  fill(#FF00FF);
  circleTactile(220, 110);
  circle(220, 110, 50);
  fill(#4F138D);
  circleTactile(280, 50);
  circle(280, 50, 50);
  fill(#000000);
  circleTactile(280, 110);
  circle(280, 110, 50);
  fill(#FFFFFF);
  circleTactile(340, 50);
  circle(340, 50, 50);
  fill(#511C01);
  circleTactile(340, 110);
  circle(340, 110, 50);
  stroke(softSilver);
  strokeWeight(15);
  line(420, 80, 630, 80);
  fill(deepCharcoal);
  strokeWeight(1);
  stroke(softSilver);
  circle(420,80,30);
}

void mouseDragged() {
  if (grelloOn == false) {
    stroke(selectedColour);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    image(grello, mouseX, mouseY, 220, 100);
  }
}


void mouseReleased() {
    colourChange(100,50,#FF0000);
    colourChange(100,110,#00FF00);
    colourChange(160,50,#0000FF);
    colourChange(160,100,#FFFF14);
    colourChange(220,50,#FB4D07);
    colourChange(220,110,#FF00FF);
    colourChange(280,50,#000000);
    colourChange(280,110,#FF00FF);
    colourChange(340,50,#FFFFFF);
    colourChange(340,110,#511C01);
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(darkGreen);
  } else {
    fill(softSilver);
  }
}

void circleTactile( int x, int y) {
  if (dist(x, y, mouseX, mouseY) <25) {
    stroke(darkGreen);
  } else {
    stroke(softSilver);
  }
}

void colourChange( int x, int y, color colour) {
  if (dist(x, y, mouseX, mouseY) <25) {
    selectedColour = colour;
  }
}
