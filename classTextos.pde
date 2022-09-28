class Textos {
  int px, py;
  int pantalla;
  String [] texto = {"LA RATITA PRESUMIDA", 
    "Había una vez una ratita muy presumida, que estaba barriendo la escalera \n y algo le llamo la atención ¡era una moneda! \n Después de mucho pensarlo, decidió que con esa moneda \n se compraría un lazo rojo para ponerlo en su rabito. ", 
    "Al día siguiente, salió rumbo al mercado con su moneda en el bolsillo. \n Cuando llegó, pidió al tendero que le vendiera un trozo de su mejor cinta roja. \n La compró y volvió a su casa. \n Al llegar a su casita, se paró frente al espejo y se colocó el lacito en el rabo. \n Estaba tan bonita, que no podía dejar de mirarse. ", 
    "Salió al portal para lucir su nuevo lazo y entonces se acercó un gallo y le dijo: \n - Buenos días, Ratita. ¡Qué guapa que estás hoy! \n - Gracias, señor Gallo. \n - ¿Te casarías conmigo? \n - No lo sé. ¿Cómo harás por las noches? \n - ¡Quiquiriquí!- respondió el gallo. \n - Contigo no me puedo casar. Ese ruido me despertaría. \n Se marchó el gallo malhumorado. ", 
    "En eso llegó el perro: \n - Pero, nunca me había dado cuenta de lo bonita que eres, Ratita. \n ¿Te quieres casar conmigo?- \n – Primero dime, ¿cómo haces por las noches? \n - ¡Guauuu, guauuu! \n - Contigo no me puedo casar, porque ese ruido me despertaría.  \n El perro se fue gruñendo.", 
    "Al rato apareció un burro que mirando a la ratita le dijo \n - Que bonita eres ! ¿ te quieres casar conmigo? \n - No lo se- le respondió la ratita - ¿ como harias por las noches ? \n  - YyyyAAAAyyyaaaa  \n – Uy no !- dijo la ratita - con ese estruendo me despertarías \n Y el burro se fue cabizbajo por el camino. ", 
    "Un Ratoncito que vivía junto a la casa de la Ratita, \n y siempre había estado enamorado de ella, se animó y le dijo: \n - ¡Buenos días, vecina! Siempre estás hermosa, pero hoy, mucho más. \n - Muy amable, pero no puedo hablar contigo, estoy muy ocupada. \n El Ratoncito se marchó cabizbajo. Al rato, pasó el señor Gato, que le dijo: \n - Buenos días, Ratita. ¡Qué linda que estás. ¿Te quieres casar conmigo? \n - Tal vez, pero, ¿cómo haces por las noches? \n - ¡Miauu, miau!- contestó dulcemente el gato.  \n - Contigo me casaré, pues con ese maullido me acariciarás. ", 
    "El día de la boda, el Gato invitó a la Ratita \n  a una comida para celebrar el matrimonio. \n Mientras el gato preparaba el fuego, la Ratita quiso ayudar \n y abrió la canasta para sacar la comita. \n Con sorpresa vio que estaba vacía. \n - ¿Dónde está la comida?- preguntó la Ratita. \n - ¡La comida eres tú!- dijo el Gato enseñando sus colmillos. ", 
    "Cuando el gato estaba a punto de comerse a Ratita, \n apareció Ratoncito, que los había seguido, pues no se fiaba del gato. \n Tomó un palo encendido de la fogata y lo puso en la cola del gato, \n que salió huyendo despavorido. \n La Ratita estaba muy agradecida y el Ratoncito, muy nervioso le dijo: \n - Ratita, eres la más bonita. ¿Te quieres casar conmigo? \n - Tal vez, pero, ¿cómo harás por las noches? \n - ¿Por las noches? Dormir y callar. ¿Qué más? \n - Entonces, contigo me quiero casar. \n  Así se casaron y fueron muy felices. \n FIN"};
  Textos () {
    px = 170;
    py = 150;
    text (texto [pantalla],px,py);
  }

  void dibujar (int pantalla, int tam) {
    fill (0);
    textSize (tam);
    text (texto [pantalla], px,py);
  }
}
