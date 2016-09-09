
static final int NUM_FRAMES = 60;
static final int NUM_LINES = 30;

float t;
int framesCount;
float offset = 1;
int greenFactor = 255/NUM_LINES;
int green = 0;
float strokeWeightFactor = 10 / NUM_LINES;
float strokeWeight = strokeWeightFactor;

void setup() {
  background(20);
  size(500,500);
}

void draw() {
  background(20);
  green = 0;
  
  translate(width/2, height/2);
  
  for (int i = 0; i < NUM_LINES; i++) {
    stroke(0,green,0);
    strokeWeight(2);
    line( x1(t + i), y1(t + i), x2(t + i), y2(t + i) ); 
    green += greenFactor;
    strokeWeight += strokeWeightFactor;
  }
  t = t + offset;
  
  if (framesCount<=NUM_FRAMES) {
    //saveFrame("export/image-###.gif");
  }
  framesCount++;
}

float x1(float t) { 
  return sin(t / 10 + offset) * 100 + sin(t / 5) * 20;
}

float y1(float t) { 
  return cos(t / 10 + offset) * 100;
}

float x2(float t) { 
  return sin(t / 10 + offset) * 200 + sin(t) * 2;
}

float y2(float t) { 
  return cos(t / 20 + offset) * 120 + cos(t / 12) * 20;
}