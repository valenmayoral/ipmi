//Valentin Perez Mayoral
//Legajo: 125659/1
//Comision 3
//TP1
//Tematica: Mural urbano de camino a casa

PImage miImagen;

void setup () {

  size (800, 400);
  miImagen = loadImage ("data/IMG_8723.JPG");

  //fill(20,20,50);
  fill(0, 49, 155);
  rect(400, 0, 400, 400);
}
void draw() {
  background(9,51,175);
  image(miImagen, 0, 0, 400, 400);
  
  //profundidad del fondo
  fill(6,33,113);
  rect(490,0,260,400);
  //izquierda
  fill(3,7,85);
  rect(475,0,20,400);
  fill(20,65,200);
  rect(400,270,75,400);
  //derecha
  fill(3,7,85);
  rect(745,0,20,400);
  fill(20,65,200);
  rect(765,270,35,400);
  
  push();
  fill(50, 161, 170);
  strokeWeight(4);
  
  //primera carita
  
  //cabeza
  fill(50, 161, 170);
  ellipse(650, 70, 90, 90);
  
  //ojos primera carita
  //izquierdo
  fill(222, 201, 40);
  ellipse(610, 65, 30, 30);
  //pupila
  fill(0, 0, 0);
  ellipse(602, 70, 7, 7);
  //reflejo
  fill(255, 255, 255);
  ellipse(602, 70, 8, 8);
  //derecho
  fill(222, 201, 40);
  ellipse(650, 65, 30, 30);
  //pupila
  fill(0, 0, 0);
  ellipse(643, 70, 7, 7);
  //reflejo
  fill(255, 255, 255);
  ellipse(643, 70, 8, 8);
  
  //nariz
  fill(0, 0, 0);
  ellipse(625, 85, 2, 2);
  fill(0, 0, 0);
  ellipse(635, 85, 2, 2);
  
  //boca
  line(620,95,650,98);
  
  //segunda carita
  fill(50, 161, 170);
  ellipse(550, 150, 90, 90);
  //ojos segunda carita
  //izquierdo
  fill(222, 201, 40);
  ellipse(550, 145, 30, 30);
  //pupila
  fill(0, 0, 0);
  ellipse(555, 140, 5, 5);
  //reflejo
  fill(255,255, 255);
  ellipse(555, 140, 7, 7);
  //derecho
  fill(222, 201, 40);
  ellipse(580, 127, 25, 25);
  //pupila
  fill(0, 0, 0);
  ellipse(585, 124, 5, 5);
  //reflejo
  fill(255, 255, 255);
  ellipse(585, 124, 7, 7);
  
  //boca
  line(565,170,595,155);
  
  //tercera carita
  fill(50, 161, 170);
  ellipse(650, 200, 100, 100);
  //ojos tercera carita
  //izquierdo
  fill(222, 201, 40);
  ellipse(650, 190, 30, 30);
  //pupila
  fill(0, 0, 0);
  ellipse(642, 187, 7, 7);
  //reflejo
  fill(255, 255, 255);
  ellipse(642, 187, 7, 7);
  //derecho
  fill(222, 201, 40);
  ellipse(610, 180, 30, 30);
  //pupila
  fill(0, 0, 0);
  ellipse(603, 175, 7, 7);
  //reflejo
  fill(255, 255, 255);
  ellipse(603, 175, 7, 7);
  
  //boca
  line(630,210,613,207);
  
  //cuarta carita
  fill(50, 161, 170);
  ellipse(570, 330, 110, 110);
  //ojos cuarta carita
  //izquierdo
  fill(222, 201, 40);
  ellipse(570, 310, 30, 30);
  //pupila
  fill(0, 0, 0);
  ellipse(580, 303, 7, 7);
  //reflejo
  fill(255, 255,255);
  ellipse(580, 303, 7, 7);
  //derecho
  fill(222, 201, 40);
  ellipse(600, 290, 30, 30);
  //pupila
  fill(0, 0, 0);
  ellipse(610, 283, 7, 7);
  //reflejo
  fill(255, 255, 255);
  ellipse(610, 283, 7, 7);
  
  //nariz
  fill(0, 0, 0);
  ellipse(600, 320, 3, 3);
  fill(0, 0, 0);
  ellipse(590, 327, 3, 3);
  
  //boca
  line(615,335,565,355);
  
  pop();

}
