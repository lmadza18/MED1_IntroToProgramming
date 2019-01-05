Object o;

int num = 25;
int[] x = new int[num];
int[] y = new int[num];

void setup() { 
  size(1000, 500);
  
  o = new Object();
  
  noStroke();
  fill(255, 102);
}

void draw() {
  background(0);
  // Shift the values to the right
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
    o.display();
  }

}
