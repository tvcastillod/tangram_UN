abstract class Shape {
  protected float rot;
  protected float scl;
  protected PVector trans;

  // TODO: estilo
  // implemente el estilo del shape (i.e., stroke weight, color, etc)
  // como se hace con los demás atributos de la clase

  // TODO: modifique o defina los constructores que necesite

  public Shape() {
    this(random(100, width-100), random(100, height-100), 0, 1);
  }

  public Shape(float x, float y, float r, float s) {
    trans = new PVector(x, y);
    rot = r;
    scl = s;
  }

  public void draw() {
    pushStyle();
    pushMatrix();
    translate(translation().x, translation().y);
    rotate(rotation());
    scale(scaling(), scaling());
    // TODO aplique el estilo aca
    drawShape();
    popMatrix();
    popStyle();
  }

  // TODO: para la seleccion de la pieza escoja uno de los siguientes prototipos
  // public abstract boolean grabsInput(float x, float y);
  // public boolean grabsInput(float x, float y) {}

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
    scl = r;
  }

  public PVector translation() {
    return trans;
  }

  public void setTranslation(float x, float y) {
    trans.x = x;
    trans.y = y;
  }
}