class Joint {
  Joint(position pos) {
    this.pos = pos;
    vx = vy = vz = 0;
    parent = null;
  }
  Joint(Joint parent, direction where, int segmentLength) {
    this.segmentLength = segmentLength;
    this.pos = parent.pos.add(where, segmentLength);
    vx = vy = vz = 0;
    this.parent = parent;
  }
  int segmentLength;
  Joint parent;
  position pos;
  float vx, vy, vz;
  void draw() {
    line(parent.pos.x, parent.pos.y, parent.pos.z,
            pos.x, pos.y, pos.z);
  }
  void update() {
    float friction = pow(0.94,dt);
    vx *= friction;
    vy *= friction;
    vz *= friction;
    
    pos.x += vx*dt;
    pos.y += vy*dt;
    pos.z += vz*dt;
    
    if(pos.y > 40) {
      pos.y = 40;
      vy = -vy*0.5;
      
      friction = pow(0.5,dt);
      vx *= friction;
      vy *= friction;
      vz *= friction;
    }
    
    // connected to the parent
    if(parent != null) {
      direction dir = new direction(pos.x-parent.pos.x, pos.y-parent.pos.y, pos.z-parent.pos.z);
      float k = (dir.length - segmentLength)/segmentLength;
      vx -= dir.xdir*k*dt;
      vy -= dir.ydir*k*dt;
      vz -= dir.zdir*k*dt;
      //pos = parent.pos.add(dir,legSegmentLength);
    }
    
    vy += 0.05;
    
    
    if(mousePressed) {
      vx += (random(1)-0.5)*1000*dt;
      vy += (random(1)-0.5)*1000*dt;
      vz += (random(1)-0.5)*1000*dt;
    }
  }
}
