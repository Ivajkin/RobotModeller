class Leg {
  Leg(position pos, direction where) {
    for(int i = 0; i < 5; ++i) { 
      joints[i] = pos.add(where.multiply(i*segmentLength));
    }
  }
  int segmentLength = 10;
  position[] joints = new position[5];
  void draw() {
  }
}
