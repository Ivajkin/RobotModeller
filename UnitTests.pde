class UnitTests {
  void Test() {
    TestPos();
  }
  private void TestPos() {
    position pos = new position(13, -10, 6.5);
    direction dir = new direction(1, 0, 0);
    pos = pos.add(dir,2);
    assert(pos.x == 15);
  }
}
