void setup() {
  size(400, 400);
}



int x = 100;
int Y = 100;
double birdYVelocity = 2;
double gravity = 0.3;
int jump = Y + 40;
int a = 300;
int s = 200;
int w = 300;
int z = 100;

void draw() {
  
  background(93, 184, 196);
  fill(153, 255, 0);
  ellipse(x, Y, 10, 10);
  fill(0, 187, 0);
  rect(a, s, 30, 500);
  fill(0,187,0);
  rect(a,0,30,s-75);
  if(intersects(x,Y,a,s,30) || intersectst(x,Y,a,s-75,30)){
 println("game over");
  

}else{
  if (Y<=400) {

    Y+=birdYVelocity; 
    birdYVelocity += gravity;
  }
  if (mousePressed) {
    birdYVelocity = -4;
  }
  a -= 4;
  if (a<=0) {
    a = 400;
    s = (int) random(100, 400);
  }
}
}

boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
  if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
    return true;
  else 
    return false;
  }
  boolean intersectst(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
  if (birdY < paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
    return true;
  else 
    return false;}
    
    
    
void mousePressed() {
}

