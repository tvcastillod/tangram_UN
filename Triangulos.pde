class Tr1 extends Shape {

  @Override
    protected void drawShape() {
    for (int i=1; i<6; i++) {
      switch(i) {
      case 1:
      case 2:
        shapes[i].scl = 3.0;
        triangle(-25, -50, -25, 50, 25, 0);
        break;
      case 3:
      case 4:
        shapes[i].scl = 1.5;
        triangle(-25, -50, -25, 50, 25, 0);
        break;
      case 5:
        shapes[i].scl = 2.15;
        triangle(-25, -50, -25, 50, 25, 0);
        break;
      }
    }
  }
}