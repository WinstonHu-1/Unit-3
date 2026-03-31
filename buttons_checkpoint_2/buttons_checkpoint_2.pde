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
  
  if (600 < mouseX && mouseX < 700 && 100 < mouseY && mouseY< 180) {
    stroke(white);
  }
  else {
    stroke(coolSteel);
  }
  fill(jetBlack);
  rect(600,100,100,80);
  
  if (600 < mouseX && mouseX < 700 && 300 < mouseY && mouseY< 380) {
    stroke(white);
  }
  else {
    stroke(coolSteel);
  }
  
  fill(charcoal);
  rect(600,300,100,80);
  
  if (600 < mouseX && mouseX < 700 && 500 < mouseY && mouseY< 580) {
    stroke(white);
  }
  else {
    stroke(coolSteel);
  }
  fill(coolSteel);
  rect(600,500,100,80);
  
  stroke(coolSteel);
  fill(selectedColour);
  square(100,100,400);
  
}


void mouseReleased() {
  if (600 < mouseX && mouseX < 700 && 100 < mouseY && mouseY< 180) {
    selectedColour = jetBlack;
 }
 
 if (600 < mouseX && mouseX < 700 && 300 < mouseY && mouseY< 380) {
    selectedColour = charcoal;
 }
 
 if (600 < mouseX && mouseX < 700 && 500 < mouseY && mouseY< 580) {
    selectedColour = coolSteel;
 }
}
