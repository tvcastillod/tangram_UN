class Tr1 extends Shape {
 
  @Override
  protected void drawShape() {
    scl = 2.0;
    triangle(-25, -50, -25, 50, 25, 0);
  }
}