void mifuncion (int ubix, int ubiy, int ancho, int alto ){
if (mouseX>ubix && mouseY>ubiy && mouseX<ubix+ancho && mouseY<ubiy+alto) {
relleno = color (random(255), random(255), random(255));
} 
rect (ubix,ubiy,ancho,alto);
}
