class Imagenes {
  int px, py;
  PImage [] rata;
  Imagenes () {
    px = 330;
    py = 50;
    rata = new PImage [9];
    for (int i=0; i<9; i++) {
      rata [i] = loadImage ("rata"+i+".jpg");
    }
  }
  void dibujar (int pantalla) {
    image (rata[pantalla], px, py);
  }
}
