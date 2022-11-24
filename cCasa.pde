class Casa {
  float x, y, tam;
  PImage casa;
  Casa () {
    x=580;
    y=420;
    tam=60;
    casa = loadImage ("casita.png");
  }
  void dibujar () {
    image (casa, x, y, tam, tam);
  }
}
