class Botones {
  int px, py, an, al;
  int actual, prox;
  String texto;

  Botones (int px, int py) {
    this.px = px;
    this.py = py;
    an = 150;
    al = 50;
    textAlign(CENTER, CENTER);
  }
  void dibujar (int actual, int prox, String texto) {
    this.actual = actual;
    this.prox = prox;
    this.texto = texto;
    fill(0);
    rect(px, py, an, al);
    fill(255); 
    textAlign (CENTER, CENTER);
    textSize (20);
    text(texto, px+an/2, py+al/2);
  }
  boolean presionar(int px, int py, int an, int al) {
    return (mouseX>px && mouseX<px+an && mouseY>py && mouseY<py+al);
  }
}
