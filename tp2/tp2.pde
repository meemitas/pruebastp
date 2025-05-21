// tp 2 ; variables y condicionales :D
// com 3, prof. David Bedoian
// nadia b. romero :)


PFont miFuente;
PFont miFuente2;

int numPantalla;
int contadorTiempo;
int pantalla = 0; //botoncito

PImage img, img2, img3, img4, img5;

String texto = "La instalación Black Waves: Lost, Immersed and Reborn (2019),";
String texto2 = "inspirada en la tradición artística japonesa, sus olas recuerdan";
String texto3 = "a La gran ola de Kanagawa, pintada por Hokusai en 1830.";
String texto4 = "Tras calcular la interacción de miles de partículas entre sí,";
String texto5 = "un espacio 3-D, generado por ordenador, expresa su movimiento";
String texto6 = "en una gran masa de agua que da lugar a una ola continua.";


void setup() {
  size(640, 480);
  numPantalla = 0;
  contadorTiempo = 0;
  frameRate(30);



  img = loadImage("arte4.jpg");
  img2 = loadImage("arte1.jpg");
  img3 = loadImage("arte2.jpg");
  img4 = loadImage("arte3.jpg");
  img5 = loadImage("sparkle.png");
}

void draw() {

  noCursor();
  stroke(0, 0, 255);
  strokeWeight(13);
  noFill();
  rect(-1, 0, 640, 480);//rectángulo que genera las líneas azules del borde
  miFuente = createFont("Super Dream.ttf", 48);
  textFont( miFuente ) ;
  miFuente2 = createFont("MADEMellowPERSONALUSEMedium.otf", 48);

  if ( numPantalla == 0 ) {

    // pantalla uno:D

    image(img, 0, 0, 640, 480); //arte4.jpg
    stroke(0, 0, 255); //color de rectángulo
    strokeWeight(13);
    noFill();
    rect(-1, 0, 640, 480);//rectángulo que genera las líneas azules del borde

    textAlign(CENTER, CENTER);
    textSize(24);
    fill(7, 1, 245); //color de texto, azul


    text("¡ iniciar !", width/7, height/7); //si lo pongo arriba y debajo de mouse logro el efecto que quería lograr!
    fill(238, 238, 249); //color de texto, blanquito


    if (  //botoncito, usé el que se dio de ejemplo en la clase y lo modifiqué

      mouseX > 19 && mouseX<19+203 &&
      mouseY > 47 && mouseY<47+42 ) {

      text("¡ iniciar !", width/7, height/7); //usé la primer font(superdream)

      fill(40, 40, 237); //color de texto, azul
      textAlign(CENTER, CENTER);
      textSize(24);

      noFill();
    } else {
      noFill();
    }
    noStroke();
    rect(19, 47, 142, 42);
    rect(mouseX, mouseY, 80, 70);

    image(img5, mouseX, mouseY, 80, 70); //brillito en mouse :D
  } else if ( numPantalla == 1 ) {



    // pantalla dos:D

    image(img2, 0, 0, 640, 480); //arte2.jpg
    textFont( miFuente2 ) ; //fuente
    stroke(0, 0, 255); //color de rectángulo
    strokeWeight(13);
    noFill();
    rect(-1, 0, 640, 480);//rectángulo que genera las líneas azules del borde
    image(img5, mouseX, mouseY, 80, 70); //brillito en mouse :D
  } else if ( numPantalla == 2 ) {

    image(img5, mouseX, mouseY, 80, 70); //brillito en mouse :D

    // pantalla tres:D



    image(img2, 0, 0, 640, 480); //arte2.jpg
    textFont( miFuente2 ) ; //fuente
    stroke(0, 0, 255); //color de rectángulo
    strokeWeight(13);
    noFill();
    rect(-1, 0, 640, 480);//rectángulo que genera las líneas azules del borde

    fill(219, 195, 159);
    noStroke();
    rect(55, 220, 525, 44); //cuadrito de fondo
    fill(0, 0, 255); //color de texto, azul
    textAlign(CENTER, CENTER);
    textSize(24);

    float shadeOffset = sin(frameCount * 0.1) * 3; //movimiento tipo sombra
    fill(245, 25, 206, 100); //sombra rosita para generar efecto sombra
    textAlign(CENTER, CENTER);
    textSize(24);
    text("Black Waves: Lost, Immersed and Reborn(2019)", width/2 + shadeOffset, height/2 + shadeOffset);

    fill(0, 0, 255); //color de texto, azul
    text("Black Waves: Lost, Immersed and Reborn(2019)", width/2, height/2);

    image(img5, mouseX, mouseY, 80, 70); //brillito en mouse :D
  } else if ( numPantalla == 3 ) {


    // pantalla cuatro:D

    image(img3, 0, 0, 640, 480); //arte2.jpg
    textFont( miFuente2 ) ; //fuente
    stroke(0, 0, 255); //color de rectángulo
    strokeWeight(13);
    noFill();
    rect(-1, 0, 640, 480); //rectángulo que genera las líneas azules del borde
    image(img5, mouseX, mouseY, 80, 70); //brillito en mouse :D
  }
  if ( numPantalla == 4 ) {


    // pantalla cinco:D

    image(img3, 0, 0, 640, 480); //arte2.jpg
    textFont( miFuente2 ) ; //fuente
    stroke(0, 0, 255); //color de rectángulo
    strokeWeight(13);
    noFill();
    rect(-1, 0, 640, 480); //rectángulo que genera las líneas azules del borde

    fill(219, 195, 159);
    noStroke();
    rect(55, 220, 525, 44); //cuadrito de fondo

    fill(0, 0, 255); //color de texto, azul
    textAlign(CENTER, CENTER);
    textSize(24);
    float x = map(contadorTiempo, 101, -74, 320, 401+0);
    text("by:teamLab", x, height/2);
    image(img5, mouseX, mouseY, 80, 70); //brillito en mouse :D
  }
  if ( numPantalla == 5 ) {


    // pantalla seis:D

    image(img4, 0, 0, 640, 480); //arte3.jpg
    textFont( miFuente2 ) ; //fuente
    stroke(0, 0, 255); //color de rectángulo
    strokeWeight(13);
    noFill();
    rect(-1, 0, 640, 480); //rectángulo que genera las líneas azules del borde
    image(img5, mouseX, mouseY, 80, 70); //brillito en mouse :D
  } else if ( numPantalla == 6 ) {


    // pantalla siete:D

    image(img4, 0, 0, 640, 480); //arte3.jpg
    textFont( miFuente2 ) ; //fuente
    stroke(0, 0, 255); //color de rectángulo
    strokeWeight(13);
    noFill();
    rect(-1, 0, 640, 480); //rectángulo que genera las líneas azules del borde

    fill(219, 195, 159);
    noStroke();
    rect(6, 167, 628, 166); //cuadrito de fondo


    fill(0, 0, 255); //color de texto, azul

    textAlign(0, CENTER);
    textSize(20);


    float x = map(contadorTiempo, -30, 73, 104, 54+0);
    text(texto, x, height/2 - 46);
    text(texto2, x, height/2 + -24);
    text(texto3, x, height/2 + -1);
    text(texto4, x, height/2 + 22);
    text(texto5, x, height/2 + 44);
    text(texto6, x, height/2 + 64);
    image(img5, mouseX, mouseY, 80, 70); //brillito en mouse :D
  } else if ( numPantalla == 7 ) {

    // pantalla ocho

    image(img4, 0, 0, 640, 480); //arte3.jpg
    textFont( miFuente ) ; //fuente
    stroke(0, 0, 255); //color de rectángulo
    strokeWeight(13);
    noFill();
    rect(-1, 0, 640, 480); //rectángulo que genera las líneas azules del borde

    strokeWeight(13);
    noFill(); //color de texto
    textAlign(CENTER, CENTER);
    textSize(24);
    fill(7, 1, 245); //color de texto, azul
    text("¡ volver al inicio !", width/5, height/7); ///si lo pongo arriba y debajo de mouse logro el efecto que quería lograr!
    fill(238, 238, 249); //color de texto, blanquito

    if (  //botoncito, usé el que se dio de ej en la clase y lo modifiqué
      mouseX > 19 && mouseX<19+203 &&
      mouseY > 47 && mouseY<47+42 ) {

      text("¡ volver al inicio !", width/5, height/7); //usé la primer font(superdream)

      fill(40, 40, 237); //color de texto, azul
      textAlign(CENTER, CENTER);
      textSize(24);

      noFill();
    } else {
      noFill();
    }
    noStroke();
    rect(19, 47, 203, 42);
    rect(mouseX, mouseY, 80, 70);

    image(img5, mouseX, mouseY, 80, 70); //brillito en mouse :D
  } else if ( numPantalla == 7 ) {
  }

  contadorTiempo++;
  if (contadorTiempo>80) {
    contadorTiempo = 30;

    numPantalla++;
    if ( numPantalla>8 ) {
      numPantalla = 7;
    }
  }
}
void mousePressed() {
  if (numPantalla == 0) {
    numPantalla = 1;
  } else if (numPantalla == 7) {
    numPantalla = 0;
  }
}
