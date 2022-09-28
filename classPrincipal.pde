class Historia {
  int pantalla;
  int py, an, al;
  Imagenes i;
  Textos t;
  Botones b0, b1, b2, b3;
  Historia () {
    py = 320;
    an = 150;
    al = 50;
    b0 = new Botones (height/2, py);
    b1 = new Botones (430, py);
    b2 = new Botones (20, py);
    b3 = new Botones (height/2, py);
    i = new Imagenes ();
    t = new Textos ();
  }
  void dibujar () {    
    if (pantalla==0) {
      b0.dibujar(pantalla, pantalla+1, "Comenzar");
      t.dibujar (pantalla, 20);
      i.dibujar (pantalla);
    } else if (pantalla>=1 && pantalla <=7) {
      b1.dibujar(pantalla, pantalla+1, "Siguiente");
      b2.dibujar (pantalla, pantalla-1, "Atrás");
      t.dibujar (pantalla, 8);
      i.dibujar (pantalla);
    } else if (pantalla == 8) {
      b3.dibujar (pantalla, 0, "Reiniciar");
      b2.dibujar (pantalla, pantalla-1, "Atrás");
      t.dibujar (pantalla, 8);
      i.dibujar (pantalla);
    }
  }
  void accionar () {
    if (b0.presionar (height/2, py, an, al) && pantalla == b0.actual) {
      pantalla = b0.prox;
    }
    if (b1.presionar (430, py, an, al) && pantalla == b1.actual) {
      pantalla = b1.prox;
    }
    if (b2.presionar (20, py, an, al) && pantalla == b2.actual) {
      pantalla = b2.prox;
    }
    if (b3.presionar (height/2, py, an, al) && pantalla == b3.actual) {
      pantalla = b3.prox;
    }
  }
}
