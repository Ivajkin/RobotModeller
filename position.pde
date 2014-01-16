
class position {
  position(float x, float y, float z) {
    this.x = x; this.y = y; this.z = z;
  }
  float x,y,z;
  position add(direction dir) {
    position pos = new position(x+dir.xdir, y+dir.ydir, z+dir.zdir);
    return pos;
  }
}
