
class Robot {
  Robot() {
  }
  void draw() {
    translate(58, 48, 0);
    sphere(28);
    leg.draw();
  }
  Leg leg = new Leg(new position(0,0,0), new direction(1,1,1));
}
