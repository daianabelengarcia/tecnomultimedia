class Bomba {
  int tam;
  float x, y;
  Bomba (float x) {
    this.x = x;
    y = random (height);
    tam = 20;
  }
  void dibujar () {
    fill (0);
    circle (x, y, tam);
  }
  void mover () {
    if (y <= height) {
      y +=2;
    } else if (y >= height) {
      y = 0;
    }
  }
}
