class Fondo {
  int x, y;
  PImage fondo;
  Fondo () {
    x = 0;
    y = 0;
    fondo = loadImage ("fondo.png");
  }
  void dibujar () {
    image (fondo, x, y);
  }
}
