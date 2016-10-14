int hd = 20;
int Y = 350;
int X = 200;
Car c = new Car(400,200,10,20);
Car a = new Car(400,125,5,30);
Car b = new Car(300,175,5,50);
Car d = new Car(400,200,5,50);
Car e = new Car(250,200,5,50);
Car f = new Car(350,250,5,50);
Car g = new Car(200,375,5,50);


void setup(){
  size(400, 400);
  
  
  
  
  
  
}
void draw(){
background(102,0,0);
out();
fill(20,102,0); 
  ellipse(X, Y, 10, 10);
c.display();
b.display();
a.display();
d.display();
e.display();
f.display();
g.display();
d.move();
e.right();
f.right();
g.move();
c.move();
b.move();
a.right();
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      Y = Y-hd;
      }
      else if(keyCode == DOWN)
      {
        Y = Y+hd; 
      }
      else if(keyCode == RIGHT)
      {
       X = X+hd;
      }
      else if(keyCode == LEFT)
      {
         X = X-hd;
      }
   }
}
void out()
{
if(X>=(375)){
X = 375;

}
if(X<=(0)){
X = 0;}
if(Y>=(400)){
Y = 400;

}
if(Y<=(0)){
Y = 0;}



}
class Car{
 int CarX;
int CarY;
int size; 
int speed;
int getX(){
return CarX;
}
//int getY(){
//return CarY;}
//int getSize(){
//return Size;

public Car(int CarX, int CarY, int speed, int size){

  
    this.CarX = CarX;
    this.CarY = CarY;
    this.speed = speed;
    this.size = size;
  
}
    void display() 
  {
    fill(0,255,0);
    rect(CarX ,CarY,  size, 50);
  }
  void move(){
  CarX-=speed;
   if(CarX<=(0)){
   CarX = 400;
   }
 
   }
  
 void right(){
  CarX+=speed;
   if(CarX>=(400)){
   CarX = 0;
  
}
 }}
