class Leg {
  Leg(position pos, direction where) {
    joints[0] = pos;
    for(int i = 1; i < 5; ++i) { 
      joints[i] = joints[i-1].add(where, segmentLength);
    }
  }
  int segmentLength = 35;
  position[] joints = new position[5];
  void draw() {
    strokeWeight(5);
    //line(0, 0, 0, 850, 20, 15);
    for(int i = 1; i < 5; ++i) {
      stroke((i-1)*64);
      line(joints[i-1].x,joints[i-1].y,joints[i-1].z,
            joints[i].x,joints[i].y,joints[i].z);
            println(joints[i].x + " ");
    }
    strokeWeight(1);
    stroke(0);
  }
}
