class direction {
  direction(float xelement, float yelement, float zelement) {
    float invertedLength = 1.0/sqrt(xelement*xelement + yelement*yelement + zelement*zelement);
    xdir = xelement * invertedLength;
    ydir = yelement * invertedLength;
    zdir = zelement * invertedLength;
  }
  direction multiply(int i) {
    direction dir2 = new direction(xdir*i, ydir*i, zdir*i);
    return dir2;
  }
  float xdir, ydir, zdir;
}
