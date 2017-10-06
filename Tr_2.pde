class Tr2 extends Shape {
 
  @Override
  protected void drawShape() {
    scl = 1.0;
    triangle(-25, -50, -25, 50, 25, 0);
  }
}