float angle = 0;
int w = 48;
float r = 100;
float g =1;
float b = 1;



void setup () {
  size(600, 600, P3D);
  colorMode(HSB,800,100,100,100);
  smooth();
}

void draw() {
  background (0,0,99); 
  lights();
  noStroke();
  translate (0, 25, -50);
  rotateX(-PI/8);
  float offset = 0;
  for (int x = 0; x<width; x=x+w+4) {

    pushMatrix();
    float y = height/2;
    translate(x, y, 0);
    rotateX(angle*0.25);
    //rotateY(angle*0.25);
    //rotateZ(angle*0.25);
    float a = angle+offset;
    float h = map(sin(a), -1, 1, 10, 100);
  

    fill(x,100,100);
    box(w,h,w);

    //rect(x - width / 2 + w  / 2, 0, w-2, h);
    offset +=0.5;
    
    popMatrix();
  
  }
  angle +=0.1;
}
