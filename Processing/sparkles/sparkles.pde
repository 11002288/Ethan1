void setup() {
  size(600, 600);
  background(0, 0, 0);
}

int Y = 10;
int X = 10;
void draw() {

makeMagical();
  
//  X+= 10;
//  Y+= 10;

  X = (int)random(400);
 Y = (int)random(400);
  fill(170, 204, 255);
X = (int)getWormX(X);
Y = (int)getWormY(Y);
ellipse(X, Y, 50, 50); 
}
float frequency = 50000;
float noiseInterval = PI; 

void makeMagical() {
  fill( 0, 0, 0, 10 );
  rect(0, 0, width, height);
  noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}





