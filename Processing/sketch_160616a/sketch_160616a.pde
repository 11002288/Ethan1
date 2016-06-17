import ddf.minim.*;
Minim minim;        
  AudioSample sound;
int score = 0;
void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}
void setup(){
size( 400, 400);     
minim = new Minim (this);
sound = minim.loadSample("drums.wav");
}

int y = 1;
int x = round(random(400));
void draw(){
background( 0,  100, 100);
ellipse(x, y, 5, 20); 
  fill(0,  0,  100);     
  stroke( 255,  255,  255);// or noStroke() 
y+=4;
if(score>=10){y+=1;}
if(score>=20){y+=1;}
if(score>=30){y+=2;}
if(y>=400){
ellipse(100, y, 5, 20); 
fill(0,  0,  100);     
  stroke( 255,  255,  255);// or noStroke() 
y = 1;
checkCatch(x);
sound.trigger();  
 x = round(random(400));
}
rect(mouseX, 360, 40, 40);
fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);
if(score>=40){
text( "U Won :|", 200, 200);}
//textSize(int fontSize)  //if it’s not big enough



}
