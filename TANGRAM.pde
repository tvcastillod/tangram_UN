Shape[] shapes = new Shape[7];
boolean drawGrid = true;

// TODO Implemente
// 1. La manipulacion de las piezas con el mouse y el teclado
// 2. La evaluacion de la solucion
// 3. El modo de creacion de nuevos problemas

void reset() {
  shapes[0] = new Rect();
  shapes[1] = new Tr1(); 
  shapes[2] = new Tr1(); 
  shapes[3] = new Tr2(); 
  shapes[4] = new Tr2(); 
  shapes[5] = new Prl();
  shapes[6] = new Tr3();
}

void setup() {
  size(700, 700);
  textSize(20);
  // TODO: agregue los shapes del juego
  reset();
  for (int i=0; i<shapes.length; i++) {
  }
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
  if (key == CODED) {
    if (keyCode == UP) {
      color mouseC = get (mouseX, mouseY);
      for (int i = 0; i<7; i++) {
        if (shapes[i].colorF == mouseC) { 
          shapes[i].trans.y -= 5;
        }
      }
    }
    if (keyCode == DOWN) {
      color mouseC = get (mouseX, mouseY);
      for (int i = 0; i<7; i++) {
        if (shapes[i].colorF == mouseC) { 
          shapes[i].trans.y += 5;
        }
      }
    }
    if (keyCode == LEFT) {
      color mouseC = get (mouseX, mouseY);
      for (int i = 0; i<7; i++) {
        if (shapes[i].colorF == mouseC) { 
          shapes[i].trans.x -= 5;
        }
      }
    }
    if (keyCode == RIGHT) {
      color mouseC = get (mouseX, mouseY);
      for (int i = 0; i<7; i++) {
        if (shapes[i].colorF == mouseC) { 
          shapes[i].trans.x += 5;
        }
      }
    }
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
    color mouseC = get (mouseX, mouseY);
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