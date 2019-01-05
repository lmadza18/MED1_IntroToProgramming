class moreBalls {

  float x;
  float y;
  float d;
  int colour;

  float movementX;
  float movementY;


  moreBalls() {
    x = random(50, width-25);
    y = random(70, height-70);
    d = 100;
    colour = 0;

    movementX = 6;
    movementY = 6;
  }

  void display() {
    fill(colour);
    noStroke();
    ellipse(x, y, d, d);


    x = x + movementX;
    y = y + movementY;
    
    

    if (x > width || x < 0) {
      movementX = movementX *-1;
    }

    if (y > height || y < 0) {
      movementY = movementY *-1;
    }
  }
    
  }
