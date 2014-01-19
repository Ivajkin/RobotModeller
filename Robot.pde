
class Robot {
  Robot() {
    legs = new Leg[legCount];
    for(int i = 0; i < legCount; ++i) {
      direction where = new direction(random(1)-0.5,random(1)-0.5,random(1)-0.5);
      legs[i] = new Leg(center.add(where,28), where);
    }
  }
  void draw() {
    //translate(400, 400, 0);
    sphere(28);
    for(int i = 0; i < legCount; ++i) {
      legs[i].draw();
    }
  }
  void update() {
    for(int i = 0; i < legCount; ++i) {
      legs[i].update();
    }
  }
  int legCount = 100;
  Leg[] legs;
  position center = new position(0,0,0);
}
