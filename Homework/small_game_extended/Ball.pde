class Ball {

  //size of ball
  float ballD; 

  //initial position of ball
  float ballX;
  float ballY;

  //movement speed
  float movementX;
  float movementY;

  //colour of ball
  int value;

  Ball() {

    //size of ball
    ballD = 100; 

    //initial position of ball
    ballX = 30;
    ballY = 200;

    //movement speed
    movementX = 6;
    movementY = 6;

    //colour of ball
    value = #000231;
  }

  void display() {

    fill(value);
    noStroke();
    ellipse(ballX, ballY, ballD, ballD);

    ballX = ballX + movementX;
    ballY = ballY + movementY;

    if (ballX > width || ballX < 0) {
      movementX = movementX *-1;
    }

    if (ballY > height || ballY < 0) {
      movementY = movementY *-1;
    }
  }
}
