class Tr3 extends Shape {
 
  @Override
  protected void drawShape() {
    scl = 1.5;
    triangle(-25, -50, -25, 50, 25, 0);
  }
}