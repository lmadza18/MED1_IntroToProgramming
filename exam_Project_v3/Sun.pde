class Sun {

  int sunX; 
  int sunY;
  int sunW; 
  int sunH;

  float rayX1;
  float rayY1; 
  float rayX2;
  float rayY2;
  int rayNum;
  int rayR;

  int sunC;
  int strokeW;
  int stroke;

  Sun() {
    sunX = 150;
    sunY = 100;
    sunW = 130;
    sunH = 130;

    rayX1= 240;
    rayY1 = 100;
    rayX2 = 300;
    rayY2 = 100;
    rayNum = 7;
    rayR = 90;

    sunC = #FFF5C9;
    strokeW = 5;
    stroke = #FFB3B6;
  }

  void display() {
    //Sun
    fill(sunC);
    noStroke();
    strokeWeight(strokeW);
    stroke(stroke);
    ellipse(sunX, sunY, sunW, sunH);
  }
}
