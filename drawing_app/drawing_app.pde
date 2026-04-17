PImage grello;
boolean grelloOn = false;
PImage rb19;
boolean rb19On = false;

color selectedColour = #000000;
color paperWhite = #FDFDFD; // Canvas Background
color deepCharcoal = #1A1A1B; // App Background
color slateGray = #2D2D30; //Toolbars
color darkGreen = #88A096; // Accents/ tactile
color softSilver = #E1E1E1; // Text/ icons
int fillColour = 0;
int sliderX = 420;
float strokeWidth = 2;


//images
void setup() {
  size (1200, 700, P2D);
  background(paperWhite);
  grello = loadImage("grello.png");
  rb19 = loadImage("rb19.png");
  selectedColour = #000000;
}

void draw() {
  // tool bar

  fill(slateGray);
  noStroke();
  rect(0, 0, 1200, 150);
  fill(selectedColour);
  tactile(800, 50, 110, 60);
  rect(800, 50, 110, 60);
  image(grello, 800, 50, 110, 50);
  tactile(920, 50, 160, 60);
  rect(920, 50, 160, 60);
  image(rb19, 920, 55, 150, 50);
  fill(softSilver);
  tactile(1120, 30, 50, 20);
  rect( 1120, 30, 50, 20);
  tactile(1120, 70, 50, 20);
  rect( 1120, 70, 50, 20);
  tactile(1120, 110, 50, 20);
  rect( 1120, 110, 50, 20);
  fill(0);
  textSize(20);
  text("new", 1127, 45);
  text("save", 1127, 85);
  text("load", 1127, 125);

  // colour selection buttons

  strokeWeight(1);
  fill(#FF0000);
  circleTactile( 100, 50,25);
  circle(100, 50, 50);
  fill(#00FF00);
  circleTactile( 100, 110,25);
  circle(100, 110, 50);
  fill(#0000FF);
  circleTactile( 160, 50,25);
  circle(160, 50, 50);
  fill(#FFFF14);
  circleTactile( 160, 110,25);
  circle(160, 110, 50);
  fill(#FB4D07);
  circleTactile(220, 50,25);
  circle(220, 50, 50);
  fill(#FF00FF);
  circleTactile(220, 110,25);
  circle(220, 110, 50);
  fill(#4F138D);
  circleTactile(280, 50,25);
  circle(280, 50, 50);
  fill(#000000);
  circleTactile(280, 110,25);
  circle(280, 110, 50);
  fill(#FFFFFF);
  circleTactile(340, 50,25);
  circle(340, 50, 50);
  fill(#511C01);
  circleTactile(340, 110,25);
  circle(340, 110, 50);
  stroke(softSilver);

  // slider


  strokeWeight(15);
  line(420, 80, 630, 80);
  fill(deepCharcoal);
  strokeWeight(1);
  circleTactile(sliderX,80,15);
  circle(sliderX, 80, 30);

  fill(softSilver);
  // thickness display
  rect (680, 68, 97, 25);
  fill(selectedColour);
  noStroke();
  rect(679, 67, strokeWidth, 27);
}

void mouseDragged() {
  if (grelloOn == true && mouseY >150) {
    image(grello, mouseX-50, mouseY-25, map(sliderX, 420, 630, 110, 220), map(sliderX, 420, 630, 50, 100));
  } else if (rb19On == true && mouseY >150) {
    
    image(rb19, mouseX-50, mouseY-25,  map(sliderX, 420, 630, 150, 300), map(sliderX, 420, 630, 50, 100));
  } else if (mouseY >150) {
    stroke(selectedColour);
    strokeWeight(strokeWidth);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  sliderControl();
}

void mousePressed() {
  if (grelloOn == true ) {
    image(grello, mouseX-50, mouseY-25, map(sliderX, 420, 630, 110, 220), map(sliderX, 420, 630, 50, 100));
  }
  if (rb19On == true) {
    image(rb19, mouseX-50, mouseY-25,  map(sliderX, 420, 630, 150, 300), map(sliderX, 420, 630, 50, 100));
  }
}

//buttons
void mouseReleased() {
  colourChange(100, 50, #FF0000);
  colourChange(100, 110, #00FF00);
  colourChange(160, 50, #0000FF);
  colourChange(160, 100, #FFFF14);
  colourChange(220, 50, #FB4D07);
  colourChange(220, 110, #FF00FF);
  colourChange(280, 50, #4F138D);
  colourChange(280, 110, #000000);
  colourChange(340, 50, #FFFFFF);
  colourChange(340, 110, #511C01);
  sliderControl();
  if (mouseX > 800 && mouseX < 910 && mouseY > 50 && mouseY < 110 && grelloOn == false ) {
    grelloOn = true;
    rb19On = false;
  }
  if (mouseX > 920 && mouseX < 1070 && mouseY > 55 && mouseY < 110 && rb19On == false ) {
    rb19On = true;
    grelloOn = false;
  }

  if (mouseX > 1120 && mouseX < 1170 && mouseY > 30 && mouseY < 50) {
    background(paperWhite);
  }


  if (mouseX > 1120 && mouseX < 1170 && mouseY > 70 && mouseY < 90) {
    selectOutput("Choose a name for your drawing", "saveImage");
  }

  if (mouseX > 1120 && mouseX < 1170 && mouseY > 110 && mouseY < 130) {
    selectInput("Pick an image to load", "openImage");
  }
}




void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(darkGreen);
  } else {
    fill(softSilver);
  }
}

void circleTactile( int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) <r) {
    stroke(darkGreen);
  } else {
    stroke(softSilver);
  }
}

void colourChange( int x, int y, color colour) {
  if (dist(x, y, mouseX, mouseY) <25) {
    selectedColour = colour;
    grelloOn = false;
    rb19On = false;
  }
}

void saveImage(File f) {
  if (f!= null) {
    PImage canvas = get( 0, 150, width, height-150);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f) {
  if (f != null) {
    int n = 0;
    while (n <100) {
      PImage pic = loadImage(f.getPath());
      image(pic, 0, 0);
      n = n+1;
    }
  }
}


void sliderControl() {
  if (mouseX > 420 && mouseX <630 && mouseY >70 && mouseY <90  ) {
    sliderX = mouseX;
  }
  strokeWidth = map(sliderX, 420, 630, 1, 100);
}
