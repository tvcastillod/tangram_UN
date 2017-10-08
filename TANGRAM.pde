Shape[] shapes = new Shape[7];
boolean drawGrid = true;

void reset() {
  shapes[0] = new Rect();
  shapes[1] = new Tr1(); 
  shapes[2] = new Tr1(); 
  shapes[3] = new Tr1(); 
  shapes[4] = new Tr1(); 
  shapes[5] = new Tr1();
  shapes[6] = new Prl();
}

void setup() {
  size(800, 900);
  reset();
}

void drawGrid(float scale) {
  pushStyle();
  strokeWeight(1);
  int i;
  for (i=0; i<=width/scale; i++) {
    stroke(0, 0, 0, 20);
    line(i*scale, 0, i*scale, height);
  }
  for (i=0; i<=height/scale; i++) {
    stroke(0, 0, 0, 20);
    line(0, i*scale, width, i*scale);
  }
  popStyle();
}

void draw() {
  background(255, 255, 255);
  if (drawGrid)
    drawGrid(10);
  for (Shape shape : shapes)
    shape.draw();
}

void keyPressed() {
  if (key == 'g' || key == 'G')
    drawGrid = !drawGrid;
  if (key == ' ') {
    color mouseC = get (mouseX, mouseY);
    for (int i = 0; i<7; i++) {
      if (shapes[i].colorF == mouseC) { 
        shapes[i].rot+=radians(45);
      }
    }
  }
  if (key == 'R'||key == 'r') {
    reset();
  }
}

void mouseClicked() {
  if (mouseButton == RIGHT) {
    color mouseC = get (mouseX, mouseY);
    for (int i=0; i<7; i++) {
      if (shapes[i].colorF == mouseC) { 
        shapes[i].rot+=radians(45);
      }
    }
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    for (int i=0; i<7; i++) {
      if (shapes[i].grabsInput(mouseX, mouseY)) {
        shapes[i].k = i;
      }
    }
  }
}

void mouseReleased() {
  for (int i = 0; i<7; i++) {
    shapes[i].k = -1;
  }
}
