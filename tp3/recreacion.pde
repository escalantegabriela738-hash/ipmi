 
void recreacion(){
int espacio = 20; 


for(int y = espacio/2; y < 400; y += espacio){
for(int x = espacio/2; x < 400; x += espacio){

  //coordenadas del cuadro 
float d = 0;


//diagonales
if ((400 - x) - y < 0){
 d = -((400 - x) - y);
} else {
d = ((400 - x) - y);
}

float tam = calcularTam(d);

      fill(0);
      noStroke();
      
      ellipse(x + 400, y, tam, tam);
   
  }
 }
}

float calcularTam(float d){ 
  float tam = map (d, 0, 200, 18, 3);
  return tam; 
}
