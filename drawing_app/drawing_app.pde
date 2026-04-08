PImage grello;

color coolSteel =#8BAAAD;
color white =#FFFFFF;
color selectedColour;

void setup() {
    size (1200,700);
    background(255);
    grello = loadImage("grello.png");
    selectedColour = coolSteel;
}

void draw() {
  fill(selectedColour);
  tactile(50,50,220,120);
  rect(50,50,220,120);
  image(grello,50,50,220,100);
  
  
  
}

void mouseDragged() {
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mouseReleased() {
 
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(white);
  }
  else {
    fill(coolSteel);
  }
}
