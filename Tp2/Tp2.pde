// Valentin Perez Mayoral
// 125659/1
// Comision 3
// Tp2
// Tema: Bandas musicales
// Banda: ABBA

int estado = 0;
int contador = 0;
float fondoX = 0;
float velocidadFondo = 5;
float transparencia = 0;
float velocidadFade = 18;

PImage Fondo;
PImage Integrantes;
PImage Abba;
PImage Disco1;
PImage Disco2;
PImage Disco3;
PImage Integrantesbyn;
PImage Foto1;
PImage Foto2;
PImage Abbitas;
PImage CD1;
PImage CD2;
PImage CD3;
PFont FuenteNueva;

void setup() {
  size(640, 480);

  Fondo = loadImage("Fondo.jpg");
  Integrantes = loadImage("Integrantes.png");
  Abba = loadImage("Abba.png");
  Disco1 = loadImage("Disco1.png");
  Disco2 = loadImage("Disco2.png");
  Disco3 = loadImage("Disco3.png");
  Integrantesbyn = loadImage("Integrantesbyn.png");
  Foto1 = loadImage("Foto1.jpg");
  Foto2 = loadImage("Foto2.jpg");
  Abbitas = loadImage("Abbitas.png");
  CD1 = loadImage("CD1.png");
  CD2 = loadImage("CD2.png");
  CD3 = loadImage("CD3.png");
  FuenteNueva = loadFont("FuenteNueva.vlw");

  inicializar();
}

void draw() {
  background(0);

  if (estado == 0) {
    pantalladeinicio();
  } else if (estado == 1) {
    pantallauno();
  } else if (estado == 2) {
    pantallados();
  } else if (estado == 3) {
    pantallatres();
  } else if (estado == 4) {
    pantallacuatro();
  } else if (estado == 5) {
    pantallacinco();
  } else if (estado == 6) {
    pantallaFinal();
  }
}

void mousePressed() {
  if (estado == 0 && mouseSobreRectangulo(320, 380, 160, 55)) {
    estado = 1;
    contador = 0;
    resetFade();
  } else if (estado == 6 && mouseSobreRectangulo(320, 300, 260, 50)) {
    estado = 0;
    contador = 0;
    resetFade();
  }
}
