//Betina Jazmín Castro
//Legajo 85145/0
//TRABAJO PRÁCTICO N°3: ILUSIÓN ÓPTICA
// link del video: https://youtu.be/VosxO068zt0

int cant;
int mod;
int desfasaje;

void setup() {
  size(500, 500);
  cant = 20;
  desfasaje = 0;
}

void draw() {
  background(70);
  mod = width/cant; 
  noStroke();

  for (int i=0; i<cant; i++) { 
    for (int j=0; j<cant; j++) {

      float centroX = i*width/cant+ mod/2;
      float centroY = j*height/cant+ mod/2;

      
      float distancia= dist( centroX, centroY, mouseX, mouseY);
// ILUSIÓN ÓPTICA DE RUIDO
      if (mousePressed) { 
        distancia= dist( centroX, centroY, random(400), random(400));
      }
      
      
      float tam = map(distancia, 0, 500, mod, 2);
// ILUSIÓN ÓPTICA ORIGINAL
      if (keyPressed) {  
        frameRate(10);
        tam = sin(map(frameCount, 0, 500, mod, 2))*25;
      }

//CONFIGURA Y TRASLADA LOS CUADRADOS
      pushMatrix();
      translate(centroX, centroY);
      rectMode(CENTER);
      rect(0+ desfasaje, 0, tam, tam);
      popMatrix();

//CONFIGURA EL COLOR DE LOS CUADRADOS 
      if (i%2==0 ) {
        fill(255);
      } else {
        fill(0);
      } 

//CONFIGURA EL DESFASAJE DE LOS CUADRADOS 
      if (j%2==0) {
        desfasaje+=10;
      } else {
        desfasaje-=10;
      }
    }
  }
}
