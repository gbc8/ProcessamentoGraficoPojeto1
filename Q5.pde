float cx;
float cy;
float x;
float y;
float w1;
float w2;

void setup()  {
  size(800, 600, P3D);
  background(255);
  frameRate(60);
  w1 = 0;
  w2 = 0;
}

void background(){
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
  circle(100,100,200);
}

void draw(){
  background();
  translate(100,100);
  cx = 75*cos(w1);
  cy = 75*sin(w1);
  circle(cx,cy,50);
  strokeWeight(10);
  point(0,0);
  w1 += PI/120;
}
