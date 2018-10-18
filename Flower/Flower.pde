Flowers myFlower1;

int r=60; // radius if the petals
float ballX; // x-coordinate of petal center
float ballY; // y-coordinate of petal center
int petalColor;
int numPetals;

void setup() {
  size(1000, 1000);
  background(#43AF76);
  
  int _r1=60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  myFlower1 = new.Flowers(_r1,_petals,_x,_y,_pc);
}

void draw() {

  int flowerColor = #7E2F77;
  int numPetals=7;
  for (float i=0; i<PI*2; i+=2*PI/numPetals) {
    ballX=width/2 + r*cos(i);
    ballY=height/2 + r*sin(i);
    ellipse(ballX, ballY, r, r);
  }
  fill(200, 0, 0);
  ellipse(width/2, height/2, r*1.2, r*1.2);
  
  flower(r,5,width/2,height/2,flowerColor);
  flower(r,5,200,400,flowerColor);
}  

void flower (float r, int numPetals, float ballX, float ballY, int petalColor)
{
  fill(petalColor);
  for (float i=0; i<PI*2; i+=2*PI/numPetals) {
    ballX=width/2 + r*cos(i);
    ballY=height/2 + r*sin(i);
    ellipse(ballX, ballY, r, r);
}
}
