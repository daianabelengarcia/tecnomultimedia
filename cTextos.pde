class Textos {
  int px, py;
  int t;
  String [] texto = { "RESCATANDO AL SOLDADITO",
  "INSTRUCCIONES", 
    "Desplazate con las flechas del teclado \n evitá las bombas y llegá a casa en menos de 15 segundos \n \n CUIDADO: Si tocas los bordes \n volves a comenzar. \n \n Haga click para comenzar", 
    "PERDISTE", 
    "GANASTE",
  "Proyecto creado por Daiana Belén García \n Leg N°91548/5 para Tecno Multimedial I \n Lic. Diseño Multimedial | UNLP"};
  Textos () {
    textAlign (CENTER, CENTER);
    text ( texto [t], px, py );
  }

  void dibujar (int t, int px, int py, int tam) {
    fill (0);
    textSize (tam);
    text (texto [t], px, py);
  }
}
