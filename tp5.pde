// Garcia Daiana Belen Leg. 91548/5
// Link YouTube: https://youtu.be/_LjOdK8EKKY

import processing.sound.*;
SoundFile son;

Juego j;

void setup () {
  size (640, 480);
  j = new Juego ();
  son = new SoundFile (this, "sonido.mp3");
  son.loop ();
}

void draw () {
  j.dibujar ();
  if (j.estado == 1) {
    son.stop ();
  } 
  if (keyPressed) {
    j.jugar (keyCode);
  }
}
void mousePressed () {
  j.comenzar ();
}
