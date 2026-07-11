// Valentin Perez Mayoral
// 125659/1
// Comision 3
// Recuperatorio Tp3
// Tema: OP ART
// Nro obra: 38
// Link video: https://youtu.be/g3oav0BXFqs
// Correcciones: Falta el video explicativo y faltan funciones propias que no retornen y que retornen valor


// Variables globales
PImage referencia;
int cantidadAnillos = 16;
color colorCirculitos = color(255);
boolean modoOscuro = true;
boolean sobreCentro = false;

void setup() {
  size(800, 400);
  referencia = loadImage("Imagen.png");
  noStroke();
  reiniciarPrograma();
}

void draw() {
  // Detecta el mouse
  sobreCentro = dist(mouseX, mouseY, 600, 200) < 20;

  // Fondo negro, blanco o fucsia para los circulitos
  if (sobreCentro) {
    fill(255, 0, 150);
  } else if (modoOscuro) {
    fill(0);
  } else {
    fill(255);
  }
  rect(400, 0, 400, 400);

  dibujarFondo();
  miColor();

  // Traslado de coordenadas
  pushMatrix();
  translate(600, 200);
  dibujarCirculitos();
  popMatrix();

  dibujarImagen();
}

// Funciones propia que no retornan sus valores
void dibujarFondo() {
  if (sobreCentro) {
    fill(181, 149, 255);
  } else if (modoOscuro) {
    fill(0);
  } else {
    fill(255);
  }
  rect(400, 0, 400, 400);
}

// Funcion propia para ciclo for
void dibujarCirculitos() {
  if (sobreCentro) {
    fill(255, 0, 150);
  } else {
    fill(colorCirculitos);
  }

  for (int anillo = 0; anillo <= cantidadAnillos; anillo++) {
    float factor = pow(anillo / float(cantidadAnillos), 2);
    float radio = map(factor, 0, 1, 8, 300);
    int puntosPorAnillo = 4 + anillo * 2;

    for (int i = 0; i < puntosPorAnillo; i++) {
      float angulo = (6.3 * i) / puntosPorAnillo;
      float x = radio * cos(angulo);
      float y = radio * sin(angulo);
      float tam = map(dist(0, 0, x, y), 0, 250, 0, 30);
      ellipse(x, y, tam, tam);
    }
  }

  if (sobreCentro) {
    fill(255, 180, 220);
  } else if (modoOscuro) {
    fill(255);
  } else {
    fill(0);
  }
  ellipse(0, 0, 1, 1);
}

// Funcion propia para la imagen
void dibujarImagen() {
  image(referencia, 0, 0, 400, 400);
}

// Funcion para reiniciar el programa
void reiniciarPrograma() {
  colorCirculitos = color(255);
  modoOscuro = true;
  sobreCentro = false;
}

// Eventos con los perifericos
void mousePressed() {
  modoOscuro = !modoOscuro;

  if (modoOscuro) {
    colorCirculitos = color(255);
  } else {
    colorCirculitos = color(0);
  }
}

void keyPressed() {
  if (key == ' ') {
    colorCirculitos = miColor();
  }

  if (key == 'r' || key == 'R') {
    reiniciarPrograma();
  }
}

// Funcion propia que retorna valores
color miColor(){
return color(random(255),random(255),random(255));
}
