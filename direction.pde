class direction {
  direction(float xelement, float yelement, float zelement) {
    length = sqrt(xelement*xelement + yelement*yelement + zelement*zelement);
    float invertedLength = 1.0/length;
    xdir = xelement * invertedLength;
    ydir = yelement * invertedLength;
    zdir = zelement * invertedLength;
  }
  float xdir, ydir, zdir;
  float length;
}
