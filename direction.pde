class direction {
  direction(float xelement, float yelement, float zelement) {
    float invertedLength = 1.0/sqrt(xelement*xelement + yelement*yelement + zelement*zelement);
    xdir = xelement * invertedLength;
    ydir = yelement * invertedLength;
    zdir = zelement * invertedLength;
  }
  float xdir, ydir, zdir;
}
