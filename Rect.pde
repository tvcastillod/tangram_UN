class Rect extends Shape {
  protected float edge;

  public Rect() {
    setEdge(70);
  }

  @Override
  protected void drawShape() {
    rectMode(CENTER);
    rect(0, 0, edge(), edge());
  }

  public float edge() {
    return edge;
  }

  public void setEdge(float e) {
    edge = e;
  }
}

// https://www.openprocessing.org/sketch/428522
// https://www.openprocessing.org/sketch/388282