
class position {
  position(float x, float y, float z) {
    this.x = x; this.y = y; this.z = z;
  }
  float x,y,z;
  position add(direction dir, float multiplicator) {
    position pos = new position(x+dir.xdir*multiplicator, y+dir.ydir*multiplicator, z+dir.zdir*multiplicator);
    return pos;
  }
}
