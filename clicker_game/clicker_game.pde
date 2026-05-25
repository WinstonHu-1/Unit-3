import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

color selectedColour = #000000;
color paperWhite = #FDFDFD; 
color deepCharcoal = #1A1A1B; 
color slateGray = #2D2D30; 
color darkGreen = #88A096; 
color softSilver = #E1E1E1; 
PImage nathan;
PImage monkey;
boolean nathanOn = false;
boolean monkeyOn = false;
PImage pauseImg;
boolean pauseOn = true;
PImage resumeImg;
int sliderY = 600;
float imageSize;
PImage selectedChar;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;
float x,y,d;
float vx, vy;
int score, lives;

int highScore;

//sound variables
Minim minim;
AudioPlayer theme, failure, success, gameover;


void setup() {
  size(800, 800);
  pixelDensity(1);
  textAlign(CENTER, CENTER);
  mode = INTRO;
  nathan = loadImage("nathan.png");
  monkey = loadImage("monkey.png");
  pauseImg = loadImage("pause.png");
  resumeImg = loadImage("resume.png");
  x = width/2;
  y= height/2;
  d = 100;
  imageMode(CENTER);
  
  vx = random(-10,10);
  vy = random(-10,10);
  
  score = 0;
  lives = 10;
  
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile ("FAILURE.wav");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
    
  } else if (mode == OPTIONS) {
   option(); 
  }else {
    println("Error: Mode = " + mode);
  }
}
