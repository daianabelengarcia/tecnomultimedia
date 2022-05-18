/* TP1 García Daiana Belén (91548/5) 
Créditos de película "Cómo entrenar a tu dragón"
Reinicia al presionar la tecla ENTER */

// VARIABLES
String dir, dir2, pro, pro2, eje, eje2, cast1, cast2;
PImage c1, c2, c3, c4, c5, c6;
PFont t1;
int posY;


void setup () {
  size (600, 400); 
  textAlign (CENTER, CENTER); 
  // ASIGNACIÓN DE VARIABLES
  
  t1 = loadFont ("Times.vlw");
  
  dir = "DIRECTED BY";
  dir2 = "CHRIS SANDERS & DEAN DEBLOIS";
  pro = "PRODUCED BY";
  pro2 = "BONNIE ARNOLD";
  eje = "EXECUTIVE PRODUCERS";
  eje2 = "KRISTINE BELSON \n TIM JOHNSON";
  cast1 = "Hiccup \n Stolk \n Gobber \n Astrid \n Snotlout \n Fishlegs";
  cast2 = "JAY BARUCHEL \n GERARD BUTLER \n CRAIG FERGUSON \n AMERICA FERRERA \n JONAH HILL \n CHRISTOPHER MINTZ-PLASSE";
  
  c1 = loadImage ("cred 1.PNG");
  c2 = loadImage ("cred 2.PNG");
  c3 = loadImage ("cred 3.PNG");
  c4 = loadImage ("cred 4.PNG");
  c5 = loadImage ("cred 6.PNG");
  c6 = loadImage ("cred 5.PNG");
  
  posY = 100;
}

void draw () {
  println ( frameCount );
  textFont (t1); //USO DE VARIABLE FUENTE
  fill (0); //COLOR NEGRO - TEXTO
  textAlign (CENTER, CENTER);
  frameRate (1);

  // PÁNTALLA 1 - TITULO DE PELICULA
  background (0); //FONDO NEGRO
  imageMode (CENTER);
  image (c1, width/2, height/2, 350, 200);

  // PANTALLA 2 - DIRECTED BY
  if ( frameCount >= 5 ) {
    image (c2, width/2, height/2, width, height);
    textSize (14);
    text (dir, 450, 310);
    textSize (16);
    text (dir2, 450, 330);
  }

  // PANTALLA 3 - PRODUCED BY
  if ( frameCount >= 10 ) {
    image (c3, width/2, height/2, width, height);
    textSize (14);
    text (pro, 400, 100);
    textSize (16);
    text (pro2, 400, 120);
  }

  // PANTALLA 4 - EXECUTIVE PRODUCERS
  if ( frameCount >= 15 ) {
    image (c4, width/2, height/2, width, height);
    textSize (14);
    text (eje, 200, 100);
    textSize (16);
    text (eje2, 200, 130);
  }
  // PANTALLA 5 - CAST
  if ( frameCount >= 20 ) {
    frameRate (60);
    image (c5, width/2, height/2, width, height);
    image (c6, width/2, posY, 300, 150);
    textSize (20);
    text ("CAST", width/2, posY+100);
    textSize (16);
    text (cast1, 200, posY+200);
    text (cast2, 400, posY+200);
    posY -= 1;
  }
}

// REINICIO DE CRÉDITOS
void keyPressed () {
  if (key == ENTER) {
    frameCount = 0;
  }
}
