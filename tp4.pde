// TP4 - Garcia, Daiana Belén. Legajo 91548/5
// Link Youtube: https://youtu.be/NwttGU2rbF8

Historia historia;
void setup () {
  size (600, 400);
  historia = new Historia ();
}
void draw () {
  background (255);
  historia.dibujar ();
}
void mousePressed () {
  historia.accionar ();
}
