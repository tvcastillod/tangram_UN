class Prl extends Shape {

  @Override
    protected void drawShape() {
    scl = 1.5;
    beginShape();
    vertex(75, -25);
    vertex(-25, -25);
    vertex(-75, 25);
    vertex(25, 25);  
    endShape();
  }
}