PImage miImagen;

int desp;// desplazar
void setup() {
  size(800, 400);
  miImagen = loadImage("R.jpg");
}
void draw() {
  background(255);
  
  image(miImagen, 0, 0, 400, 400); //iamgen de la torre

  //Fondo de la imagen color
  fill(86, 142, 250);
  
  rect(400,0, 400,400);
  
  
  fill(155, 117, 72);//color de las figs
  
  //figura principal
  triangle(598, 45, 541, 244, 654, 246);
  
  rect( 541, 244, 113, 150);
  
  noStroke();
  
  
  //parte de abajo de la torre 
  quad(540, 240, 500, 314, 600, 305, 549, 231);
  
  quad(540,230, 500,310, 411, 398, 572, 390);
  
  quad(614, 270, 650, 240, 710, 310, 644, 328);
  
  quad(614, 260, 700, 300, 760, 380, 654, 387);
  
  
  //lineas de la torre//
  fill(137, 78, 6);
  strokeWeight(2);
  stroke(2);
  
line(600, 244, 540, 237);//arriba izquierda 

line(600, 244, 650, 238);//arriba derecha

line(603, 311, 499, 306);//abajo izquirda

line(603, 311, 702, 302);//arriba izquierda 

line(598, 22, 598, 388);//linea del medio

line(598, 76, 587, 76);//linea izquierda punta 

line(598, 76, 606, 75);//linea derecha punta

//ventanas 
noStroke();
fill(86, 142, 250);

ellipse(530, 370, 80, 80);//ventana izquierda

ellipse(670,380,80,80);//vrntana derecha

quad(545, 256, 576, 258, 567, 302, 523, 300 );//ventana izquierda

quad(615, 260, 645, 258, 678, 295, 635,299);//ventana derecha 


  fill(155, 117, 72);
strokeWeight(0);

stroke(10);
  line(600,0,600,60);
  
    fill(255);// de texto con coordenadas 
  textSize(15);
  text(mouseX+ "-" +  mouseY, mouseX, mouseY);
}
