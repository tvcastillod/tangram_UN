abstract class Shape {
  protected float rot;
  protected float scl;
  protected color colorF;
  protected PVector trans;
  protected int k = -1;
  boolean a = true; 
  PImage imgFig[] = new PImage [5];
  PImage imgSol[] = new PImage [5];

  // TODO: estilo
  // implemente el estilo del shape (i.e., stroke weight, color, etc)
  // como se hace con los demás atributos de la clase

  // TODO: modifique o defina los constructores que necesite

  public Shape() {
    this(random(100, width-100), random(100, height-350), 0, 1, color(random(30, 150), random(30, 150), random(30, 150)));
  }

  public Shape(float x, float y, float r, float s, color c) {
    trans = new PVector(x, y);
    rot = r;
    scl = s;
    colorF = c;
  }

  public void draw() {
    textSize(20);
    fill(0);
    text("Mover: mouse", 50, 750);
    text("Rotar: click derecho/ barra espaciadora", 50, 780);
    text("Desordenar: tecla R", 50, 810);
    //text("Cambiar figura: tecla C", 50, 840);
    noStroke();
    pushStyle();
    pushMatrix();
    translate(translation().x, translation().y);
    rotate(rotation());
    scale(scaling(), scaling());
    fill (colorShape());
    // TODO aplique el estilo aca
    drawShape();
    popMatrix();
    popStyle();
    if (k == -1) {
      trans.x = trans.x;
      trans.y = trans.y;
    } else {
      if (mousePressed) {
        trans.x = mouseX;
        trans.y = mouseY;
      }
    }
  }

  // TODO: para la seleccion de la pieza escoja uno de los siguientes prototipos
  // public abstract boolean grabsInput(float x, float y);
  // public boolean grabsInput(float x, float y) {}

  public boolean grabsInput(float x, float y) {
    color mouseC = get((int)x, (int)y);
    return colorF == mouseC;
  }

  protected abstract void drawShape();

  public float scaling() {
    return scl;
  }

  public void setScaling(float s) {
    scl = s;
  }

  public float rotation() {
    return rot;
  }

  public void setRotation(float r) {
    rot = r;
  }

  public PVector translation() {
    return trans;
  }

  public void setTranslation(float x, float y) {
    trans.x = x;
    trans.y = y;
  }

  public color colorShape() {
    return colorF;
  }

  public void setColor(color c) {
    colorF = c;
  }
  
  public void setImage(){
  
   
    for (int i=0;i<5;i++){
    if (!a) { 
        image(imgFig[i], 200, 750, 200, 200);
    } 
    if (a) { 
      imgSol[0] = loadImage("Fig0_Sol.png");
    //imgSol[1] = loadImage("Fig0_Sol.png");
    //imgSol[2] = loadImage("Fig0_Sol.png");
    //imgSol[3] = loadImage("Fig0_Sol.png");
    //imgSol[4] = loadImage("Fig0_Sol.png");
    }
    }
  }
}