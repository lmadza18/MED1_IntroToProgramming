//initial position of ball
float ballX = 20;
float ballY = 200;

//movement speed
float movementX = 14.5;
float movementY = 14.5;

//flower
Flowers myFlower1;
int r = 30;
int petalNum = 6;

void setup() {
  size(700, 700);
  ballX=0;
}

void draw() {
  frameRate(60);
  background(22, 44, 66);
  ellipse(ballX, ballY, 40, 40);
  fill(#7248C1);

  ballX = ballX + movementX;
  ballY = ballY + movementY;

  if (ballX > width || ballX <0) {
    movementX = movementX * -1; //ball turns around. multiplying by -1 bc a negative*positive = negative and neg*neg = positive
    //-1 will keep it at a constant speed, anything higher and the ball's speed increases for every hit
  }

  if (ballY > height || ballY < 0) {
    movementY = movementY * -1;
  }
}

void flower ( ) {
  fill(#FFA005);
  for (float i=0; i<PI*2; i+=2*PI/petalNum) {
    ballX=width/2 + r*cos(i);
    ballY=height/2 + r*sin(i);
    ellipse(ballX, ballY, r, r);
  }
  fill(200, 0, 0);
  ellipse(width/2, height/2, r*1.2, r*1.2);
}
