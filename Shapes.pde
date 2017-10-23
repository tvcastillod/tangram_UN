abstract class Shape {
  protected float rot;
  protected float scl;
  protected color colorF;
  protected PVector trans;
  protected int k = -1;
  public boolean[] a = new boolean[3]; 
  protected PImage[] imgSol = new PImage[3];

  public Shape() {
    this(random(300, width-500), random(100, height-350), radians(45)*(int(random(1, 4))), 1, color(random(30, 150), random(30, 150), random(30, 150))); //definir valores
  }

  public Shape(float x, float y, float r, float s, color c) {
    a[0]=true;
    a[1]=true;
    a[2]= true;
    trans = new PVector(x, y);
    rot = r;
    scl = s;
    colorF = c;
  }

  public void draw() {
    noStroke();
    pushStyle();
    pushMatrix();
    translate(translation().x, translation().y);
    rotate(rotation());
    scale(scaling(), scaling());
    fill (colorShape());
    drawShape();
    popMatrix();
    popStyle();
    if (k != -1) {
      if (mousePressed) {
        trans.x = mouseX;
        trans.y = mouseY;
      }
    }
  }

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
}