void setup() {
  size(800, 700);
  background(25,135,185);
}

void draw() {
  for (int y = -20; y < 900; y = y + 30) {
    for (int x = -20; x <900; x = x + 30) {
      scale(x, y);
    }
  }
  for (int a = -40;a < 900; a = a + 40) {
    for (int b = -40;b <900;b = b + 60) {
      overlay(a, b);
}
  }
}


void scale(int x,int y){
  noStroke();
  fill(205,240,255);
  beginShape();
  vertex(x-10, y-5);
  vertex(x-8, y+1);
  vertex(x, 12+y);
  vertex(15+x, 12+y);
  endShape();
  noFill();
  stroke(115,170,195);
  strokeWeight(3);
  bezier(x,y,x+35,y+35,x+35,y+5,x+40,y+40 );
  bezier(x,y,x-35,y-35,x-35,y-5,x-40,y-40);
  stroke(0);
}

void overlay(int a,int b){
  noFill();
  strokeWeight(2);
  stroke(0,70,95);
  ellipse(a,b,40,60);
  noStroke();
  fill(0,70,95);
  beginShape();
  vertex(a-20,b-5);
  vertex(a-5,b-30);
  vertex(a-20,b-60);
  vertex(a-35,b-30);
  endShape();
}

