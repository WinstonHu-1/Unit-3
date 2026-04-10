PImage grello;
boolean grelloOn = false;

color selectedColour;
color paperWhite = #FDFDFD; // Canvas Background
color deepCharcoal = #1A1A1B; // App Background
color slateGray = #2D2D30; //Toolbars
color darkGreen = #88A096; // Accents/ tactile
color softSilver = #E1E1E1; // Text/ icons


void setup() {
  size (1200, 700);
  background(paperWhite);
  grello = loadImage("grello.png");
  selectedColour = darkGreen;
}

void draw() {
  fill(slateGray);
  rect(0,0,1200,150);
  fill(selectedColour);
  tactile(50, 50, 220, 120);
  //rect(50, 50, 220, 120);
  //image(grello, 50, 50, 220, 100);
  fill(255,0,0);
  circle(100,50,50);
  fill(0,255,0);
  circle(100,110,50);
  
  
}

void mouseDragged() {
  if (grelloOn == false) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    image(grello,mouseX, mouseY, 220, 100);
  }
}


void mouseReleased() {
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(darkGreen);
  } else {
    fill(softSilver);
  }
}
