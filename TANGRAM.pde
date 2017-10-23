Shape[] shapes = new Shape[7];
Silh[] silh = new Silh[3];
boolean drawGrid = false;

void reset() {
  shapes[0] = new Rect();
  shapes[1] = new Tr1();
  shapes[2] = new Tr1(); 
  shapes[3] = new Tr1();
  shapes[4] = new Tr1(); 
  shapes[5] = new Tr1();
  shapes[6] = new Prl();
  silh[0] = new Silh();
  silh[1] = new Silh();
  silh[2] = new Silh();
}

void setup() {
  size(1400, 900);
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
  textSize(20);
  fill(0);
  text("Mover: mouse", 50, 750);
  text("Rotar: click derecho/ barra espaciadora", 50, 780);
  text("Reiniciar: tecla R", 50, 810);
  text("Solución figuras: tecla 1, 2 y 3", 50, 840);


  if (! shapes[0].a[0]) {
    shapes[0].imgSol[0] = loadImage("Fig0.png");
    image(shapes[0].imgSol[0], 503, 649, 256, 257);
  }
  silh[0].draw();
  if (key == '1') {
    shapes[0].a[0] = false;
  }


  if (! shapes[0].a[1]) {
    shapes[1].imgSol[1] = loadImage("Fig1.png");
    image( shapes[1].imgSol[1], 800, 645, 255, 255);
  }
  silh[1].draw();
  if (key == '2') {
    shapes[0].a[1]=false;
  }


  if ( !shapes[0].a[2]) {
    shapes[2].imgSol[2] = loadImage("Fig3.png");
    image( shapes[2].imgSol[2], 1084, 615, 296, 291);
  }
  silh[2].draw();
  if (key == '3') {
    shapes[0].a[2]=false;
  }

  textSize(20);
  fill(0);
  text("Figura 1                               Figura 2                             Figura 3", 550, 880);
}

void keyPressed() {
  if (key == 'g' || key == 'G')
    drawGrid =!drawGrid;
  if (key == ' ') {
    for (int i = 0; i<7; i++) {
      if (shapes[i].grabsInput(mouseX, mouseY)) { 
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
    for (int i=0; i<7; i++) {
      if (shapes[i].grabsInput(mouseX, mouseY)) { 
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