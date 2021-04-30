
/* TRABAJO PRÁCTICO N°1: CÍRCULO CROMÁTICO
JAZMÍN CASTRO 85145/0 
*/
void setup(){
  size(400,400);
  background(0);
  strokeWeight(5);
  fill(255,0,0);
  triangle(200,200,200,0,100,25);
  fill(#FC03A1);
  triangle(200,200,100,25,25,100);
  fill(#FC03F1);
  triangle(200,200,25,100,0,200);
  fill(#8703FC);
  triangle(200,200,0,200,25,300);
  fill(0,0,255);
  triangle(200,200,25,300,100,375);
  fill(#037DFC);
  triangle(200,200,100,375,200,400);
  fill(#03FCEA);
  triangle(200,200,200,400,300,375);
  fill(#00F79E);
  triangle(200,200,300,375,375,300);
  fill(0,255,0);
  triangle(200,200,375,300,400,200);
  fill(#A4FC03);
  triangle(200,200,400,200,375,100);
  fill(#EEF700);
  triangle(200,200,375,100,300,25);
  fill(#F76300);
  triangle(200,200,300,25,200,0);
}
