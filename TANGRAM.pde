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
  for (int i=0; i<5; i++) {
    if (key == 'S' || key == 's') {
      shapes[i].a = false; //deja ver la solución del tangram (imagen)
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

    
  //  imgSol[0] = loadImage("Fig0.png");
  //  imgSol[1] = loadImage("Fig1.png");
  //  imgSol[2] = loadImage("Fig2.png");
  //  imgSol[3] = loadImage("Fig3.png");
  //  imgSol[4] = loadImage("Fig4.png");
  //  imgFig[0] = loadImage("Fig0_Sol.png");
  //  imgFig[1] = loadImage("Fig1_Sol.png");
  //  imgFig[2] = loadImage("Fig2_Sol.png");
  //  imgFig[3] = loadImage("Fig3_Sol.png");
  //  imgFig[4] = loadImage("Fig4_Sol.png");
    
  //  for (int i=0;i<5;i++){
  //  if (a==true) { 
  //    image(imgFig[0], 500, 680, 200, 200);
        
  //  } 
  //  if (a==false) { 
  //    image(imgSol[0], 500, 680, 200, 200);
  //  }
  //}