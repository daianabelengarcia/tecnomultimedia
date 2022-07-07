//Daiana Belén García Leg 91548/5
//Link video: https://youtu.be/sFvyKelaQkY

String [] textos = {"Verdadero o Falso \n FÚTBOL", "Instrucciones", 
  "Seleccione Verdadero o Falso con el mouse \n Verde es Verdadero \n Rojo es Falso", 
  "Para reiniciar el juego presione la tecla Enter", "Ganaste", "Perdiste"};
String [] frases = { "Cada equipo tiene 11 jugadores en la cancha", 
  "Si hay empate se sigue jugando hasta que uno meta un gol", 
  "Antes de la tarjeta roja te tienen que sacar amarilla", 
  "Si la pelota sale del campo es córner", 
  "Se juegan dos tiempos de 45 minutos"};
int estado;
int puntos;
int cant = 10;
PImage pelota;
float [] px = new float[cant];
float [] py = new float[cant];


void setup () {
  size (600, 400);
  estado = 0;
  puntos = 0;
  textAlign (CENTER, CENTER);
  pelota = loadImage ("pelota.png");
}

void draw () {
  background (255);
  for (int i=0; i<cant; i++) {
    px[i] = random(0, width);
    py[i] = random(0, height);
    image (pelota, px[i], py[i], 40, 40);
  }
  if (estado ==0) {
    mistextos (textos [0], width/2, height/2, 40);
    fill (255, 255, 0);
    boton (225, 275, width/4, height/8);
    fill (0);
    textSize (16);
    text ("Instrucciones", width/2, 300);
  } else if (estado==1) {
    mistextos (textos [1], width/2, 100, 30);
    mistextos (textos [2], width/2, 200, 20);
    fill (0, 0, 100);
    boton (225, 325, width/4, height/8);
    fill (0);
    textSize (16);
    text ("Comenzar", width/2, 350);
  } else if (estado ==2) {
    fill (0);
    mistextos (textos [3], width/2, 350, 10);
    mistextos (frases [0], width/2, height/2, 20);
    fill (0, 255, 0);
    botonV (100, 250, width/6, height/8);
    fill (255, 0, 0);
    boton (400, 250, width/6, height/8);
  } else if (estado ==3) {
    fill (0);
    mistextos (textos [3], width/2, 350, 10);
    mistextos (frases [1], width/2, height/2, 20);
    fill (0, 255, 0);
    boton (100, 100, width/6, height/8);
    fill (255, 0, 0);
    botonV (400, 100, width/6, height/8);
  } else if (estado ==4) {
    fill (0);
    mistextos (textos [3], width/2, 350, 10);
    mistextos (frases [2], width/2, height/2, 20);
    fill (0, 255, 0);
    boton (100, 250, width/6, height/8);
    fill (255, 0, 0);
    botonV (400, 250, width/6, height/8);
  } else if (estado ==5) {
    fill (0);
    mistextos (textos [3], width/2, 350, 10);
    mistextos (frases [3], width/2, height/2, 20);
    fill (0, 255, 0);
    boton (100, 100, width/6, height/8);
    fill (255, 0, 0);
    botonV (400, 100, width/6, height/8);
  } else if (estado ==6) {
    fill (0);
    mistextos (textos [3], width/2, 350, 10);
    mistextos (frases [4], width/2, height/2, 20);
    fill (0, 255, 0);
    botonV (100, 250, width/6, height/8);
    fill (255, 0, 0);
    boton (400, 250, width/6, height/8);
  } else if (estado ==7) {
    fill (0);
    mistextos (textos [3], width/2, 350, 10);
    if (puntos >=5) {
      fill (0, 255, 0);
      mistextos (textos [4], width/2, height/2, 60);
    } else {
      fill (255, 0, 0);
      mistextos (textos[5], width/2, height/2, 60);
    }
  }
}

void mistextos (String texto, int px, int py, int tamT) {
  textSize (tamT);
  text (texto, px, py);
}

void boton (int ubix, int ubiy, int ancho, int alto ) {
  rect (ubix, ubiy, ancho, alto);
  if (mousePressed) {
    if (mouseX>ubix && mouseY>ubiy && mouseX<ubix+ancho && mouseY<ubiy+alto) {
      estado ++;
    }
  }
}
void botonV (int ubix, int ubiy, int ancho, int alto ) {
  rect (ubix, ubiy, ancho, alto);
  if (mousePressed) {
    if (mouseX>ubix && mouseY>ubiy && mouseX<ubix+ancho && mouseY<ubiy+alto) {
      estado ++;
      puntos ++;
    }
  }
}
//REINICIO
void keyPressed () {
  if (key == ENTER ) {
    estado = 0;
  }
}
