// Valentin Perez Mayoral
// 125659/1
// Comision 3
// Tp3
// Tema: OP ART
// Nro obra: 38

PImage referencia;
float rotacion = 1.2;
int cantidadAnillos = 16;
color colorCirculos = color(255);

void setup() {
  size(800, 400);
  referencia = loadImage("Imagen.png");
  noStroke();
}

void draw() {
  // Fondo negro para los circulitos
  fill(0);
  rect(400, 0, 400, 400);

  // Traslado de coordenadas
  pushMatrix();
  translate(600, 200);
  circulitos();
  popMatrix();

  // Imagen n38 que me toco
  fill(0);
  rect(400, 0, 0, 400);
  image(referencia, 0, 0, 400, 400);
}

// Funcion propia que retornan sus valores
void circulitos() {
  // Ciclo for anidado para los circulitos con la variable del colorcito
  fill(colorCirculos);
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

  // Puntito central
  ellipse(0, 0, 3, 3);
}

// Colorcito aleatorio cada vez que apretas el mouse
void mousePressed() {
  colorCirculos = color(random(255), random(255), random(255));
}

// Retornar el colorcito al apretar el espacio
void keyPressed() {
  if (key == ' ') {
    colorCirculos = color(255);
  }
}
