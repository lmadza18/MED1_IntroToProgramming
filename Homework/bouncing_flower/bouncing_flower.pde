//flower
Flower f;

void setup() {
  size(700, 700);
  //ballX=0;

  float flowerX = width/2; //x-position of center 
  float flowerY = height/2; //y-position of center
  int numPetals = 7; //number of petals
  float flowerR = 80;
  int colorMid = #FFFBAD; //colour of center
  int colorPetals = #FFADAD; //colour of petals

  f = new Flower(flowerX, flowerY, numPetals, flowerR, colorMid, colorPetals);
}

void draw() {
  background(#ADC2FF);

  f.display();
  f.bounce();
}
