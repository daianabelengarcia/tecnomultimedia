class Juego {
  int estado;
  float y;
  int tiempo;
  Fondo f;
  Textos t;
  Boton bot;
  Casa c;
  Soldado s;
  Bomba [] b = new Bomba [18];
  Juego () {
    f = new Fondo ();
    t = new Textos ();
    bot = new Boton (245, 350);
    c = new Casa ();
    s = new Soldado (5, height/2, 28, 40) ;
    for (int i=0; i<b.length; i++) {
      b [i] = new Bomba (50+i*30);
    }
  }
  void dibujar () {
    f.dibujar ();
    if (estado == 0) {
      t.dibujar (0, width/2, 70, 40);
      t.dibujar (1, width/2, 135, 25);
      t.dibujar (2, width/2, 250, 15);
      bot.dibujar (0, 1, "JUGAR");
      tiempo = 0;
    }
    if (estado == 1) {
      if ((frameCount%60) == 0) {
        tiempo ++;
      }
      c.dibujar ();
      s.dibujar ();
      for (int i=0; i<b.length; i++) {
        b[i].dibujar ();
        b[i].mover ();
      }
      s.tocarparedes ();
      perder ();
      ganar ();
      fill (0);
      text ("Tiempo: "+int(15-tiempo), 60, 20);
    }
    if (estado == 2) {
      t.dibujar (3, width/2, 150, 50);
      t.dibujar (5, width/2, 250, 20);
      bot.dibujar (2, 0, "REINICIAR");
    }
    if (estado == 3) {
      t.dibujar (4, width/2, 150, 50);
      t.dibujar (5, width/2, 250, 20);
      bot.dibujar (3, 0, "REINICIAR");
    }
  }
  void comenzar () {
    if (bot.presionar (245, 350, 150, 50) && estado == bot.actual) {
      estado = bot.prox;
      s.x = 5;
      s.y = height/2;
    }
  }
  void jugar (int tecla) {
    if (estado == 1) {
      s.mover (tecla);
    }
  }
  void perder () {
    for (int i=0; i<b.length; i++ ) {
      float distan = dist (s.x+s.tamx, s.y+s.tamy, b[i].x+b[i].tam/2, b[i].y+b[i].tam/2);
      if (distan < b[i].tam/2 + s.tamx/2 || tiempo >= 15) {
        estado = 2;
      }
    }
  }
  void ganar () {
    if (s.x < c.x+c.tam && s.x > c.x && s.y < c.y+c.tam && s.y > c.y) {
      estado = 3;
    }
  }
}
