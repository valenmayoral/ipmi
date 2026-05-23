void inicializar() {
  estado = 0;
  contador = 0;
  fondoX = 0;
  resetFade();
}

void resetFade() {
  transparencia = 0;
}

void dibujarImagenFade(PImage img, float x, float y, float w, float h) {
  tint(255, transparencia);
  image(img, x, y, w, h);
  noTint();
}

void textoFade(String texto, float x, float y, color c) {
  fill(red(c), green(c), blue(c), transparencia);
  text(texto, x, y);
}

boolean mouseSobreRectangulo(float x_, float y_, float ancho_, float alto_) {
  if (mouseX > x_ - ancho_/2 && mouseX < x_ + ancho_/2 &&
    mouseY > y_ - alto_/2 && mouseY < y_ + alto_/2) {
    return true;
  } else {
    return false;
  }
}

void pantalladeinicio() {
  
  // Fondo en movimiento
  fondoX -= velocidadFondo;
  if (fondoX <= -640) fondoX = 0;

  image(Fondo, fondoX, 0, 640, 480);
  image(Fondo, fondoX + 640, 0, 640, 480);

  // Imagenes
  image(Integrantes, 10, 10);
  image(Abba, 180, -45, 290, 240);

  // Botoncito comienzo
  rectMode(CENTER);
  noStroke();

  // Efecto botoncito
  if (mouseSobreRectangulo(320, 380, 180, 60)) {
    fill(255, 102, 102);
  } else {
    fill(227, 62, 62);
  }
  rect(320, 380, 160, 55);

  // Texto del botoncito
  fill(255);
  textFont(FuenteNueva);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("CONOCER", 320, 380);
}

void pantallauno() {

  // Fondo en movimiento
  fondoX -= velocidadFondo;
  if (fondoX <= -640) fondoX = 0;

  image(Fondo, fondoX, 0, 640, 480);
  image(Fondo, fondoX + 640, 0, 640, 480);

  // Fade
  transparencia += velocidadFade;
  if (transparencia > 255) transparencia = 255;

  // 3 discos
  dibujarImagenFade(Disco1, 50, 30, 150, 150);
  dibujarImagenFade(Disco2, 245, 295, 150, 150);
  dibujarImagenFade(Disco3, 440, 30, 150, 150);

  // Rectangulo para texto
  fill(157, 168, 242, 190);
  rect(width/2, 240, 590, 90);

  // Texto
  fill(0);
  textFont(FuenteNueva);
  textSize(18);
  textoFade("ABBA es uno de los grupos pop más exitosos de la historia,\n" +
    "conformado en Estocolmo, Suecia, en 1972.\n" +
    "Su nombre es un acrónimo de las iniciales de sus cuatro integrantes:\n" +
    "Agnetha, Björn, Benny y Anni-Frid.", 320, 240, color(0));

  contador++;
  if (contador >= 60 * 3) {
    estado = 2;
    contador = 0;
    resetFade();
  }
}

void pantallados() {

  // Fondo en movimiento
  fondoX -= velocidadFondo;
  if (fondoX <= -640) fondoX = 0;

  image(Fondo, fondoX, 0, 640, 480);
  image(Fondo, fondoX + 640, 0, 640, 480);

  transparencia += velocidadFade;
  if (transparencia > 255) transparencia = 255;

  // Imagen
  dibujarImagenFade(Integrantesbyn, 145, 230, 360, 274);

  // Rectangulo para el texto
  fill(162, 219, 255, 190);
  rect(width/2, 130, 350, 150);

  // Texto
  fill(0);
  textFont(FuenteNueva);
  textSize(18);
  textoFade("Sus canciones más icónicas incluyen:\n" +
    "-Dancing Queen\n" +
    "-Mamma Mia\n" +
    "-Take a Chance on Me\n" +
    "-The Winner Takes It All\n" +
    "-Fernando\n" +
    "-Sos\n", width/2, 140, color(0));

  contador++;
  if (contador >= 60 * 3) {
    estado = 3;
    contador = 0;
    resetFade();
  }
}

void pantallatres() {

  // Fondo en movimiento
  fondoX -= velocidadFondo;
  if (fondoX <= -640) fondoX = 0;

  image(Fondo, fondoX, 0, 640, 480);
  image(Fondo, fondoX + 640, 0, 640, 480);

  // Fade
  transparencia += velocidadFade;
  if (transparencia > 255) transparencia = 255;

  // Rectangulo para la foto
  fill(255);
  rect(147, 255, 215, 315);

  // Foto
  dibujarImagenFade(Foto1, 50, 110, 193, 270);

  // Rectangulo para el texto
  fill(156, 185, 150, 190);
  rect(440, 205, 305, 160);

  // Texto
  fill(0);
  textFont(FuenteNueva);
  textSize(18);
  textoFade("En la cima de su éxito, los dos\n" +
    "matrimonios se separaron.\n" +
    "Esto se reflejó en letras\n" +
    "más tristes y maduras.\n" +
    "Finalmente, el grupo se dividió\n" +
    "en diciembre de 1982, aunque\n" +
    "nunca hicieron un anuncio oficial.\n", 440, 215, color(0));

  contador++;
  if (contador >= 60 * 3) {
    estado = 4;
    contador = 0;
    resetFade();
  }
}

void pantallacuatro() {

  // Fondo en movimiento
  fondoX -= velocidadFondo;
  if (fondoX <= -640) fondoX = 0;

  image(Fondo, fondoX, 0, 640, 480);
  image(Fondo, fondoX + 640, 0, 640, 480);

  //Fade
  transparencia += velocidadFade;
  if (transparencia > 255) transparencia = 255;

  // Rectangulo para la foto
  fill(255);
  rect(445, 340, 290, 195);

  // Foto
  dibujarImagenFade(Foto2, 310, 250, 270, 162);

  // Rectngulo para el texto
  fill(90, 160);
  rect(260, 125, 420, 100);

  // Texto
  fill(255);
  textFont(FuenteNueva);
  textSize(18);
  textoFade("Se estima que ABBA vendió entre 150 y 400\n"+
    "millones de discos en todo el mundo,\n"+
    "lo que los convierte en uno de los grupos más\n"+
    "exitosos comercialmente de la historia.", 260, 125, color(255));

  contador++;
  if (contador >= 60 * 3) {
    estado = 5;
    contador = 0;
    resetFade();
  }
}

void pantallacinco() {

  // Fondo en movimiento
  fondoX -= velocidadFondo;
  if (fondoX <= -640) fondoX = 0;

  image(Fondo, fondoX, 0, 640, 480);
  image(Fondo, fondoX + 640, 0, 640, 480);

  // Fade
  transparencia += velocidadFade;
  if (transparencia > 255) transparencia = 255;

  // Imagen
  dibujarImagenFade(Abbitas, 145, 190, 360, 294);

  // Rectangulo para el texto
  fill(255, 233, 155, 190);
  rect(width/2, 150, 520, 100);

  // Texto
  fill(0);
  textFont(FuenteNueva);
  textSize(18);
  textoFade("Gracias a esos cientos de millones de discos, influyeron\n" +
    "en generaciones enteras y su música sigue sonando\n" +
    "en todas partes, gracias a películas, musicales y playlists.\n" +
    "Definen la nostalgia y la alegría en el pop.", width/2, 150, color(0));


  contador++;
  if (contador >= 60 * 3) {
    estado = 6;
    contador = 0;
    resetFade();
  }
}

void pantallaFinal() {

  // Fondo en movimiento
  fondoX -= velocidadFondo;
  if (fondoX <= -640) fondoX = 0;

  image(Fondo, fondoX, 0, 640, 480);
  image(Fondo, fondoX + 640, 0, 640, 480);

  // CDs
  image(CD1, 470, 340, 120, 120);
  image(CD2, 55, 50, 120, 120);
  image(CD3, 450, 50, 120, 120);

  // Cierre grande
  fill(255);
  textFont(FuenteNueva);
  textSize(38);
  text("¡Ahora ya\n" +
    "conoces a ABBA!", width/2, 190);

  // Cierre chiquito
  textSize(18);
  textFont(FuenteNueva);
  text("El grupo más iconic del dance pop <3", width/2, 250);

  // Botoncito para volver al inicio

  noStroke();

  // Efecto para aclarar el botoncito
  if (mouseSobreRectangulo(320, 300, 200, 70)) {
    fill(90, 250, 90);
  } else {
    fill(40, 180, 40);
  }
  rect(320, 300, 260, 50);

  // Texto del botoncito
  fill(255);
  textFont(FuenteNueva);
  textSize(28);
  text("VOLVER AL INICIO", 320, 300);
}
