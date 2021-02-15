float len = 850;

void setup(){
size(900,900);
noStroke();
fill(50);
frameRate(15);
colorMode(HSB);
}

void sierpinski(float x, float y, float l, int depth, int base){
  if(depth==base){
    fill(random(150,270), 360, 360);
    tri(x,y,l);
  }
  else{
    sierpinski(x,y,l/2,depth+1,base);
    sierpinski(x+l/2,y,l/2,depth+1,base);
    sierpinski(x+l/4,y-sin(PI/3)*l/2,l/2,depth+1,base);
  }
}
void tri(float x, float y, float l){
  triangle(x,y,x+l/2,y-sin(PI/3)*l,x+l,y);
}
void draw(){
  background(0);
  sierpinski(width/2-len/2,height/2+sin(PI/3)*len/2,len,1,int(map(mouseX,0,width,1,10)));
}
