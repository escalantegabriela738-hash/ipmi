//variables 
PImage puntos;
boolean efecto = false; // los circulos negros cambian 
boolean circuloGrande = false;
boolean girar = false;
int espacio = 20;
int tiempo = 0;

void setup(){
  
 size(800, 400);
puntos = loadImage("23.png");

}




void draw(){
background(255);

if(girar && millis() - tiempo > 5000){ //tiempo de giro
girar = false;
}


if(girar){      //gira el circulo grande
background(0); 
mouseT(20);
}else { 
  background(255);
}
if (efecto){        //colores
  background(0);
}else {
background(255);
}
image (puntos, 0, 0, 400, 400); 
recreacion();
 
 if(efecto || circuloGrande) { //cumple la condicion 
  mouseT(20); // mouse touch
 };


}

void mouseT(int espacio){ //toco mouse


if(girar){
pushMatrix();
translate (600, 200);
rotate(radians(frameCount));
translate( -600, -200 );
}

for(int Y = espacio/2; Y < 400; Y += espacio){    // espacio de 20
for(int X = espacio/2; X < 400; X += espacio){    // for anidados

float d = (400 - X) - Y;   //distacia de circulos
float tam = d;
if(d < 0){
 tam = -d;      // tamaño dependiendo el lado de la diaginal 
} else{
tam = d;
}

 
float posX = X + 400;

float posY= Y ;

if(circuloGrande){
  posX = 600;
  posY= 200;
} else { posX = X + 400;
 posY = Y;}

if(dist(mouseX, mouseY, posX, posY) < 50){
  
  posX = posX + random (-20,20);
  posY = posY + random (-20,20);
}
int CR = int(random(6)); // cr = color random

 if(CR == 0){
 fill(255,140, 0);
 } else if (CR == 1){
 fill(255, 0, 255);
 } else if (CR == 2){
 fill(180, 255, 0);
 } else if (CR == 3){
 fill(0, 255,0);
 }else if (CR == 4){
 fill(0, 255, 255);
 }else{
  fill(100, 200, 255);
 }
  noStroke();
  ellipse( posX, posY, tam, tam);
   }
  }
  if(girar){
  popMatrix();
  }
 }
 
 void dibujaCG(){
 int espacio = 20;
for(int Y = espacio/2; Y < 400; Y += espacio){
for(int X = espacio/2; X < 400; X += espacio){
  
 float posX = random( 500, 700);
 float posY = random ( 100,300);
 
 for(int j = 0; j <50; j++){
 if(dist(posX, posY, 600, 200) > 100){
   
 posX = random(500, 700);
 posY = random(100, 300);
 }
 }
 fill(255);
 noStroke();
 ellipse( posX,posY,8, 8);
    }
   }
  }
 
 
 void mouseMoved(){
   if( mouseX > 400)
efecto = true;
 }
 
 void mousePressed(){
   efecto = false;
 } 
  void keyPressed(){
    if (key == 'u'){
     circuloGrande = true;
     }
     if( key == 'j'){
     circuloGrande = false;
     }
     if( key == 'g'){ 
     girar = true;
     tiempo = millis();
      }
      if(key =='r'){
      efecto = false;
      circuloGrande = false;
      girar = false;
      tiempo = 0;
      }
      
  
    }
    
