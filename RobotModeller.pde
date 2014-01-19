int physicsIterations = 100;
float dt = 1.0/30.0/physicsIterations;
    
void setup() {
  UnitTests test = new UnitTests(); test.Test();
  size(1024,768, OPENGL);
  //noStroke();
  sphereDetail(10);
  lights();
  smooth(4);
}
Robot robot = new Robot();
void draw() {
  
  float cameraY = height/2.0;
  float fov = mouseX/float(width) * PI/2;
  float cameraZ = cameraY / tan(fov / 2.0);
  float aspect = float(width)/float(height);
  perspective(fov, aspect, cameraZ/10.0, cameraZ*10.0);
  
  translate(width/2+30, height/2, 0);
  rotateX(-PI/6);
  rotateY(PI/3 + mouseY/float(height) * PI);
  
  
  background(255,142,72);
  robot.draw();
  for(int i = 0; i < physicsIterations; ++i) {
    robot.update();
  }
}




