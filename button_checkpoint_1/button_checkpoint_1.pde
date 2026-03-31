color onyx = #000f08;
color jetBlack =#1C3738;
color charcoal =#4D4847;
color mintCream =#F4FFF8;
color coolSteel =#8BAAAD;
color white =#FFFFFF;
color selectedColour; 

void setup() {
  size(800,600);
  strokeWeight(5);
  stroke(coolSteel);
  selectedColour = coolSteel;
}

void draw () {
  background(mintCream);
  
  if (dist(700,100,mouseX,mouseY) <50) {
    stroke(white);
  }
  else {
    stroke(coolSteel);
  }
  fill(jetBlack);
  circle(700,100,100);
  
  if (dist(700,300,mouseX,mouseY) <50) {
    stroke(white);
  }
  else {
    stroke(coolSteel);
  }
  
  fill(charcoal);
  circle(700,300,100);
  
  if (dist(700,500,mouseX,mouseY) <50) {
    stroke(white);
  }
  else {
    stroke(coolSteel);
  }
  fill(coolSteel);
  circle(700,500,100);
  
  stroke(coolSteel);
  fill(selectedColour);
  square(100,100,400);
  
}


void mouseReleased() {
  if (dist(700,100,mouseX,mouseY) <50) {
    selectedColour = jetBlack;
 }
 
 if (dist(700,300,mouseX,mouseY) <50) {
    selectedColour = charcoal;
 }
 
 if (dist(700,500,mouseX,mouseY) <50) {
    selectedColour = coolSteel;
 }
}
