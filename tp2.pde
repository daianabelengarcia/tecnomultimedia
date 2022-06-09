// Garcia Daiana Belen Legajo 91548/5
// Video YT: https://youtu.be/3BEimQfGs0g

//VARIABLES GLOBALES
int cant;
int tam;
color relleno;

void setup () {
  size (500, 500);
  cant = 10;
  relleno = color(255);
}
void draw () {
  background (0);
  noStroke ();
  tam = width/cant;
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      fill (relleno);
      if ((x+y)%2 ==0) { // PARES=CUADRADOS GRANDES
        rect (x*tam, y*tam, tam, tam);
      } else { // IMPARES=CUADRADOS PEQUEÑOS
        rectMode (CENTER);
        rect (x*tam, y*tam, tam/2, tam/2);
      }
      rectMode (CORNER);
      mifuncion (0, 0, tam, tam);
    }
  }

  if (mousePressed) { 
    cant++;
  }
} 

// REINICIO
void keyPressed () {
  if (key == ENTER) {
    cant = 10;
    relleno = color (255);
  }
}
