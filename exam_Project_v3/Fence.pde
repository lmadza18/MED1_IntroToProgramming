class Fence {

  int fenceH;
  int fenceT;
  int strokeW; 
  int fenceC;

  Fence() {
    fenceH = 600;
    fenceT = 630;
    strokeW = 25;
    fenceC = #FFF0AF;
  }

  void display() {
    //background(#5987CC);
    stroke(fenceC);
    strokeWeight(strokeW);
    line(0, fenceT, width, fenceT);
    //}

    for (int i=0; i < width; i = i+70) {
      strokeWeight(strokeW);
      stroke(fenceC);
      line(i, fenceH, i, height);
    }
  }
}
