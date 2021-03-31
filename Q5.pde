float cx;
float cy;
float x;
float y;
float w;

void setup(){
  size(800, 600, P3D);
  background(255);
  frameRate(60);
  w = 0;
}

void background(){
  background(255);
  translate(width/2, height/2, 0);
  strokeWeight(1);
  scale(1,-1,1);
  rotateX(-PI/4); 
  rotateY(PI/4);
  stroke(255,0,0);
  line(0,0,0,300,0,0);
  stroke(0,0,255);
  line(0,0,0,0,400,0);
  stroke(0,255,0);
  line(0,0,0,0,0,200);
  stroke(0);
  rotateX(PI/3);
  strokeWeight(6);
  rect(0, 0, 200, 200);
  point(100,100);
  circle(100,100,200);
}

void draw(){
  background();
  translate(100,100);
  pushMatrix();
  rotateZ(radians(frameCount%360));
  translate(0, 100);
  pushMatrix();
  rotateX(-PI/2);
  translate(25, -25, 0);
  circle(0, 0, 50);
  pushMatrix();
  stroke(0,255,0);
  strokeWeight(10);
  x = 25*cos(-w);
  y = 25*sin(-w);
  point(x,y);
  w += PI/60;
  popMatrix();
  popMatrix();
  popMatrix();
}
