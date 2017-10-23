class Silh {
  protected color cSil;

  public void drawSilh() {
    for (int i=0; i<3; i++) {
      switch(i) {
      case 0:
        noFill();
        stroke(0);
        strokeWeight(3);
        rect(550, 700, 150, 150);
        break;
      case 1:
        pushMatrix();
        translate(773, 620);
        scale(0.75);
        beginShape();
        vertex(100, 50);
        vertex(150, 100);
        vertex(350, 100);
        vertex(300, 150); 
        vertex(300, 350);
        vertex(250, 300);
        vertex(50, 300); 
        vertex(100, 250);
        vertex(100, 50);
        endShape();
        popMatrix();
        pushMatrix();
        translate(782, 629);
        scale(0.7);
        beginShape();
        vertex(150, 200);
        vertex(200, 150);
        vertex(250, 200); 
        vertex(200, 250);
        vertex(150, 200);
        endShape();
        popMatrix();
        break;
      case 2:
        strokeWeight(8);
        pushMatrix();
        translate(1108, 632);
        scale(0.3);
        beginShape();
        vertex(0, 200);
        vertex(200, 200);
        vertex(400, 0); 
        vertex(600, 200);
        vertex(800, 200);
        vertex(650, 350);
        vertex(650, 650); 
        vertex(500, 800);
        vertex(300, 800);
        vertex(150, 650);
        vertex(150, 350);
        vertex(0, 200);
        endShape();
        popMatrix();
        pushMatrix();
        translate(1108, 632);
        scale(0.3);
        beginShape();
        vertex(300, 500);
        vertex(400, 600);
        vertex(500, 500); 
        vertex(500, 600);
        vertex(300, 600);
        vertex(300, 500);
        endShape();
        popMatrix();
        break;
      }
    }
  }

  public void draw() {
    drawSilh();
  }
}