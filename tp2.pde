PImage fondo, boton;
PFont fuente, fuente2, fuente3;
float posY, posX, posZ, vel;
String FINAL = "WELCOME HOME!";

void setup(){ 
  size(400, 400);
  fondo = loadImage("coraline.jpg");
  boton = loadImage ("boton.png");
  fuente = loadFont("Chiller-Regular-48.vlw");
  fuente2 = loadFont( "CurlzMT-48.vlw");
  fuente3 = loadFont("CenturyGothic-48.vlw");
  posY = height;
  posX = width;
  posZ = -100;
  vel= 1;
}

void draw(){
  tint(210);
  image(fondo, 0, 0, width, height);
  
  //Titulo
  fill(219, 240 , 131);
  textFont(fuente, posX-275);
  textAlign(CENTER);
  text("Coraline", 200, posY);
  
  //Creditos del Director
  textFont(fuente3,10);
  text("directed by", posX/4, posY+100);
  
  textFont(fuente2,22);
  text("HENRY SELICK", posX/1.6, posY+105);
  
  //Creditos Escritor
  textFont(fuente3,10);
  text("writted by", posX/4, posY+150);
  
  textFont(fuente2,22);
  text("NEIL GAIMAN", posX/1.6, posY+155);
  
  //Creditos Productor
  textFont(fuente3,10);
  text("produced by", posX/4, posY+200);
  
  textFont(fuente2,22);
  text("HENRY SELICK", posX/1.6, posY+205);
  
  //Creditos Musica
  textFont(fuente3,10);
  text("music by", posX/4, posY+250);
  
  textFont(fuente2,22);
  text("BRUNO COULAIS", posX/1.6, posY+255);
  
  //Creditos Fotografia
  textFont(fuente3,10);
  text("cinematography by", posX/4, posY+300);
  
  textFont(fuente2,22);
  text("PETE KOZACHIK", posX/1.6, posY+305);
  
  //Creditos Montaje
  textFont(fuente3,10);
  text("film editing by", posX/4, posY+350);
  
  textFont(fuente2,22);
  text("CHRISTOPHER MURRIE", posX/1.6, posY+355);
  

  //WELCOME HOME!
  fill(255);
  textFont(fuente2);
  textSize(30);
  text(FINAL, posX/2, posY+455);

  fill(0,posZ*0.7);
  rect(0,0,width,height);
  
  tint(posZ-100);
  image(boton, posX/2-20, posY+460, posZ/3, posZ/3);

  posY = posY- vel;
  posZ = posZ+ vel/2;

}
