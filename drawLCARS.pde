int lcarsBtnW = 150;
int lcarsBtnH = 60;
int lcardBtnS = 5;

PFont fontS = loadFont("C:/Users/tyr/Documents/GitHub/drawLCARS/data/LCARS-25.vlw");
PFont fontM = loadFont("C:/Users/tyr/Documents/GitHub/drawLCARS/data/LCARS-40.vlw");
PFont fontL = loadFont("C:/Users/tyr/Documents/GitHub/drawLCARS/data/LCARS-60.vlw");

void setup() {
  size(1080, 1920);
  frameRate(30);
}

void draw() {
  background(0);
  
  
  
  drawElbow(0, 0, (lcarsBtnW+lcardBtnS)*3+lcarsBtnW, (lcarsBtnH+lcardBtnS)*2+lcarsBtnH/2, 1, 3, "");
  
  
  drawBtn(0, 0, 1, 0, "DOWN");
  drawBtn(0, 0+lcarsBtnH+lcardBtnS, 2, 0, "748");
  //drawBtn(0, 0+(lcarsBtnH+lcardBtnS)*2, 3, 0, "834");
  
  
  drawBtn(lcarsBtnW+lcardBtnS, 0, 4, 0, "526");
  drawBtn(lcarsBtnW+lcardBtnS, lcarsBtnH+lcardBtnS, 5, 0, "7345");
  //drawBtn(lcarsBtnW+lcardBtnS, (lcarsBtnH+lcardBtnS)*2, 6, 0, "543");
  
  drawBtn((lcarsBtnW+lcardBtnS)*2, 0, 7, 0, "526");
  drawBtn((lcarsBtnW+lcardBtnS)*2, lcarsBtnH+lcardBtnS, 8, 0, "7345");
  //drawBtn((lcarsBtnW+lcardBtnS)*2, (lcarsBtnH+lcardBtnS)*2, 1, 0, "543");
  
  //drawBtn((lcarsBtnW+lcardBtnS)*3, 0, 2, 0, "UP");
  //drawBtn((lcarsBtnW+lcardBtnS)*3, lcarsBtnH+lcardBtnS, 3, 0, "7345");
  //drawBtn((lcarsBtnW+lcardBtnS)*3, (lcarsBtnH+lcardBtnS)*2, -1, 0, "543");
  
  
  
  
  if (keyPressed) {
    if (key == ESC) {
      exit();
    }
  }
}

void drawElbow(int x, int y, int w, int h, int c, int s, String t) {
  // x: x axis position
  // y: y axis position
  // c: button color
  // s: button style (0: )
  // t: button text
  
  ellipseMode(CORNER);
  textFont(fontS);
  textAlign(RIGHT);
  
  noStroke();
  makeColor(c);
  
  switch (s) {
    default:
      arc(x, y, lcarsBtnW, lcarsBtnW, PI, PI+HALF_PI);
      rect(x+(lcarsBtnW/2), y, w-(lcarsBtnW/2), lcarsBtnH/2);
      rect(x, y+(lcarsBtnW/2), lcarsBtnW, h-(lcarsBtnW/2));
      rect(x+lcarsBtnW/2, y+lcarsBtnH/2, lcarsBtnW/2, lcarsBtnW/2);
      rect(x+lcarsBtnW, y+lcarsBtnH/2, lcarsBtnW/4, lcarsBtnW/4);
      makeColor(0);
      arc(x+lcarsBtnW, y+lcarsBtnH/2, lcarsBtnW/2, lcarsBtnW/2, PI, PI+HALF_PI);
      break;
    case 1:
      arc(x, y+h-lcarsBtnW, lcarsBtnW, lcarsBtnW, HALF_PI, PI);
      rect(x+(lcarsBtnW/2), y+h-lcarsBtnH/2, w-(lcarsBtnW/2), lcarsBtnH/2);
      rect(x, y, lcarsBtnW, h-(lcarsBtnW/2));
      rect(x+lcarsBtnW/2, y+h-lcarsBtnW/2, lcarsBtnW/2, lcarsBtnW/2);
      rect(x+lcarsBtnW, y+h-lcarsBtnH/2-lcarsBtnW/4, lcarsBtnW/4, lcarsBtnW/4);
      makeColor(0);
      arc(x+lcarsBtnW, y+h-lcarsBtnH/2-lcarsBtnW/2, lcarsBtnW/2, lcarsBtnW/2, HALF_PI, PI);
      break;
    case 2:
      arc(x+w-lcarsBtnW, y, lcarsBtnW, lcarsBtnW, PI+HALF_PI, TWO_PI);
      rect(x, y, w-(lcarsBtnW/2), lcarsBtnH/2);
      rect(x+w-lcarsBtnW, y+(lcarsBtnW/2), lcarsBtnW, h-(lcarsBtnW/2));
      rect(x+w-lcarsBtnW, y+lcarsBtnH/2, lcarsBtnW/2, lcarsBtnW/2);
      rect(x+w-lcarsBtnW-lcarsBtnW/4, y+lcarsBtnH/2, lcarsBtnW/4, lcarsBtnW/4);
      makeColor(0);
      arc(x+w-lcarsBtnW-lcarsBtnW/2, y+lcarsBtnH/2, lcarsBtnW/2, lcarsBtnW/2, PI+HALF_PI, TWO_PI);
      break;
    case 3:
      arc(x+w-lcarsBtnW, y+h-lcarsBtnW, lcarsBtnW, lcarsBtnW, 0, HALF_PI);
      rect(x, y+h-lcarsBtnH/2, w-(lcarsBtnW/2), lcarsBtnH/2);
      rect(x+w-lcarsBtnW, y, lcarsBtnW, h-(lcarsBtnW/2));
      rect(x+w-lcarsBtnW, y+h-lcarsBtnW/2, lcarsBtnW/2, lcarsBtnW/2);
      rect(x+w-lcarsBtnW-lcarsBtnW/4, y+h-lcarsBtnH/2-lcarsBtnW/4, lcarsBtnW/4, lcarsBtnW/4);
      makeColor(0);
      arc(x+w-lcarsBtnW-lcarsBtnW/2, y+h-lcarsBtnH/2-lcarsBtnW/2, lcarsBtnW/2, lcarsBtnW/2, 0, HALF_PI);
      break;
  }
  
}

void drawBtn(int x, int y, int c, int s, String t) {
  // x: x axis position
  // y: y axis position
  // c: button color
  // s: button style (0: both sides round, 1: right rounded, 2: left rounded, 3: squared)
  // t: button text
  
  ellipseMode(CORNER);
  textFont(fontS);
  textAlign(RIGHT);
  
  noStroke();
  makeColor(c);
  
  switch (s) {
    default:
      ellipse(x, y, lcarsBtnH, lcarsBtnH);
      ellipse(x+(lcarsBtnW-lcarsBtnH), y, lcarsBtnH, lcarsBtnH);
      rect(x+(lcarsBtnH/2), y, lcarsBtnW-lcarsBtnH, lcarsBtnH);
      break;
    case 1:
      ellipse(x, y, lcarsBtnH, lcarsBtnH);
      rect(x+(lcarsBtnH/2), y, lcarsBtnW-(lcarsBtnH/2), lcarsBtnH);
      break;
    case 2:
      ellipse(x+(lcarsBtnW-lcarsBtnH), y, lcarsBtnH, lcarsBtnH);
      rect(x, y, lcarsBtnW-(lcarsBtnH/2), lcarsBtnH);
      break;
    case 3:
      rect(x, y, lcarsBtnW, lcarsBtnH);
      break;
  }
  
  makeColor(0);
  if (s < 2 || s > 3) {
    text(t, x+lcarsBtnW-(lcarsBtnH/2)-5, y+lcarsBtnH-5);
  } else {
    text(t, x+lcarsBtnW-5, y+lcarsBtnH-5);
  }
  
}

void makeColor(int c) {
  switch (c) {
    case 0: // Black
      fill(#000000);
      break;
    default: // Standard Yellow
      fill(#FFFF99);
      break;
    case 2: // Middle Yellow
      fill(#FFCC66);
      break;
    case 3: // Orangish Yellow
      fill(#FF9933);
      break;
    case 4: // Lt Yellow
      fill(#FFDD66);
      break;
    case 5: // Light Blue
      fill(#99CCFF);
      break;
    case 6: // Dark Blue 
      fill(#3366CC);
      break;
    case 7: // Middle Gray
      fill(#999999);
      break;
    case 8: // Lt Gray
      fill(#CCCCCC);
      break;
    case -1:
      int m = millis();
      if (m % 4000 > 1000) {
        fill(#FF0000);
      } else {
        fill(#330000);
      }
      break;
  }
}
