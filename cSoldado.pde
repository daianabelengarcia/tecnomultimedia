class Soldado {
  int x, y, tamx, tamy;
  PImage soldadito;
  Soldado (int x, int y, int tamx, int tamy) {
    this.x = x;
    this.y = y;
    this.tamx = tamx;
    this.tamy = tamy;
    soldadito = loadImage ("soldadito.png");
  }
  void dibujar () {
    image (soldadito, x, y, tamx, tamy);
  }
  void mover (int tecla) {
    if (tecla == UP) {
      y -=5;
    } else if (tecla == DOWN) {
      y +=5;
    } else if (tecla == LEFT) {
      x -= 5;
    } else if (tecla == RIGHT) {
      x +=5;
    }
  }
  void tocarparedes () {
    if (x <= 0 || x >= width - tamx || y <= 0 || y >= height - tamy) {
      x = 5;
      y = height/2;
    }
  }
}
