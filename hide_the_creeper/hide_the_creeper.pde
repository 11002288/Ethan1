int x = 990;
int y = 400;
PImage creeper;
PImage images;
PImage minecraft;
void setup(){

  size(1000,1000);
images=loadImage("images.png");
images.resize(5,5);
minecraft=loadImage("minecraft.png");
minecraft.resize(5,5);
creeper=loadImage("creeper.jpg");
creeper.resize(1000,1000);
background(creeper);

}
void draw(){
background(creeper);
  image(creeper, 1000,1000);
image(images, x,y);
if(mousePressed){
ellipse(mouseX,mouseY, 20,20);
if(isNear(x,mouseX) &&isNear(y,mouseY)){
  fill(0,255,0);
}else{
  fill(255,0,0);
  } }
 }

boolean isNear(int a, int b) {
      if (abs(a - b) < 10)
          return true;
     return false;
}

