

class Leg {
  Leg(position pos, direction where) {
    joints[0] = new Joint(pos);
    for(int i = 1; i < 5; ++i) { 
      joints[i] = new Joint(joints[i-1], where, 28);
    }
  }
  
  Joint[] joints = new Joint[5];
  void draw() {
    strokeWeight(5);
    //line(0, 0, 0, 850, 20, 15);
    for(int i = 1; i < 5; ++i) {
      stroke((i-1)*64);
      joints[i].draw();
    }
    strokeWeight(1);
    stroke(0);
  }
  void update() {
    for(int i = 1; i < 5; ++i) { 
      joints[i].update();
    }
  }
}
