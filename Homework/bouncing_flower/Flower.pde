class Flower {

  //variables
  float flowerX; //x-position of center 
  float flowerY; //y-position of center
  int numPetals; //number of petals
  float flowerR;
  int colorMid; //colour of center
  int colorPetals; //colour of petals

  int speedX = 3;
  int speedY = 4;


  //constructor
  Flower(float temp_flowerX, float temp_flowerY, int temp_numPetals, float temp_flowerR, int temp_colorMid, int temp_colorPetals) {

    flowerX = temp_flowerX;
    flowerY = temp_flowerY;
    numPetals = temp_numPetals; 
    flowerR = temp_flowerR;
    colorMid = temp_colorMid;
    colorPetals = temp_colorPetals;
  }

  void display() {

    
    float ballX; 
    float ballY;

    fill(colorPetals);
    for (float i=0; i<PI*2; i+=2*PI/numPetals) { //<>//
      ballX=flowerX + flowerR*cos(i);
      ballY=flowerY + flowerR*sin(i);
      ellipse(ballX, ballY, flowerR, flowerR);
      //ballX += speedX;
      //ballY += speedY;
    }
    fill(colorMid);
    ellipse(flowerX, flowerY, flowerR*1.3, flowerR*1.3);
    flowerX += speedX;                        // speed for flower
    flowerY += speedY;
  } //<>//

  void bounce() {
    if (flowerX > width - flowerR || flowerX < flowerR) { //<>//
    } 
    speedX = -speedX;
    if (flowerY > height - flowerR || flowerY < flowerR) {
      speedY = -speedY;
    }
  }
}
