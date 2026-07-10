  int estado; //Para ver la pantalla
  
  int Botonx = 180; //boton de inicio 
  int Botony = 420; //boton de inicio 
  int botonAncho = 280; //boton de inicio 
  int botonAlto = 35; //boton de inicio 
  int indice = 0;
  int tiempo;
  int indiceMapa = 0;

  //animacion 
  int tiempoPantalla;
  float ytexto3 = 500;
  float yTexto5 = 500;
  
String textoDePantalla3 ="Pokémon rojo fuego fue lanzado como videojuego en 1996,\n años después The Pokémon Company y Game Frake busco actualizar y traer nuevamente al mercado este juego,\n lograndolo gracias a un Remake lanzado en 2004.\n Esta nueva versión traía funciones e introducía la versión original a la tercera generación de juegos.";
                                                                          
String textoPantalla5 ="El juego se sitúa en la región de Kanto, donde nos proponen ganar torneos y medallas,\n  que nos ayudan a clasificar a la liga Pokémon, para pasarnos el juego, una vez terminado,\n el juego nos da un postgame  las islas sete,\n son grupos de islas donde podes capturar nuevos pokemones y pequeñas misiones que al terminar  nnos ayudan a hacer la secuela con Pokémon zafiro";                                                                                                        
String textoMostrado = "";
String textoMapaMostrado = "";

PFont FuenteDePokemon; //fuente que elegi 

PImage logo; 
PImage estela;
PImage FondoPokemon;
PImage FondoDelTexo3;
PImage mapa;
PImage personajeMasculino;
PImage dragon;
PImage kanto;
PImage fondoFinal;
PImage estrella;

float estrellaX = -240;
float estrellaY = 240;
float logoX = -500;

float s = 30;

void setup() {

 size (640, 480 );
   estado = 1; //en que num empieza la pantalla
   
   estrella = loadImage("estrella.png");
   estela = loadImage("brillitos.png"); // cargo la imagen
   logo = loadImage("pokemon.png"); // cargo la otra imagen 
   FondoPokemon = loadImage( "fondo del juego.png");//Pantlla2
   FondoDelTexo3 = loadImage ( "fondo del texto.jpg" );//Pantalla 3
   mapa = loadImage( "mapa.png"); //frase maap 
   personajeMasculino = loadImage("nenito.png");//para la pagina 4 
   dragon = loadImage ("charmander grande.png");//para la pagina 4 tambien 
   kanto = loadImage("mapa kanto.png");
   fondoFinal = loadImage("gracias por ver.png");
   //tiempo
   tiempoPantalla = millis();
   
     
   FuenteDePokemon = createFont("mi fuente nueva.ttf", 48);
   
     
}

void draw() {

  // pantalla ----- 1 ( intro de pokemon)

  if ( estado == 1) {
    background(0);
  

  //// Brillos y la estrella
    
  image(
     estela,
      estrellaX - 240,
     estrellaY - 55,
      320,
     110
    );
    
  // empieza la estrella
 fill(255, 230, 0);

 noStroke();
 
 // movimiento de la estrella
  estrellaX += 8;
  
  if(estrellaX >140) { 

    image(logo, logoX, 110, 350, 220);

 // movimiento del logo de pokemon 
   if (logoX < 145) {
      logoX += 7;
      }
       beginShape();
  vertex(estrellaX, estrellaY - 30);

  vertex(estrellaX +  s * 0.4, estrellaY -  s * 0.4);

  vertex(estrellaX +  s, estrellaY);

  vertex(estrellaX +  s, 0.4, estrellaY + s * 0.4);

  vertex(estrellaX, estrellaY +  s);

  vertex(estrellaX - s* 0.4, estrellaY + s * 0.4);

  vertex(estrellaX -  s, estrellaY);

  vertex(estrellaX -  s * 0.4, estrellaY -  s * 0.4);

  endShape(CLOSE);
  }

  
  
  // pantalla ----- 2 (boton de inicio )

  }
  else if (estado == 2){
  
   background(0);
  image(FondoPokemon, 0, 0, width, height);// inserto fondo
  
  //bontoncito
  fill(0); 
 rect(Botonx, Botony, botonAncho, botonAlto, 10);
 
 stroke(255);
 noFill();
 rect(Botonx, Botony, botonAncho, botonAlto, 10);
 
 fill(255);
 textFont(  FuenteDePokemon);
 textAlign( CENTER, CENTER);
 textSize(24);
 text("PRESS START",  Botonx + botonAncho/2, Botony + botonAlto/2);
  
//pantalla ------ 3 ( explicacion)
  }
  else if( estado == 3){

      background(0);
  image(FondoDelTexo3, 0, 0, width, height);
    
//texto acomodado
 //background (220, 240, 220);
 fill (30,50,120);   
 stroke(255);   
 strokeWeight(4);  
 rect( 20, 290, 600, 170, 10);   
    
 //borde la caja de texto  
  fill(240);  
   
  noStroke();  
  rect( 30, 300, 580, 150, 5);
  
  //texto
  
  fill(0);
  textFont(  FuenteDePokemon);
  textSize(18);
  textAlign(LEFT, TOP);
   text(textoMostrado, 50, ytexto3, 540, 120);
     //mueve el texto
  if (ytexto3 > 320){
  ytexto3 -= 2;   
    }
    if(frameCount % 2 == 0){
   if(indice < textoDePantalla3.length()){

    textoMostrado +=
    textoDePantalla3.charAt(indice);

    indice++;
  }  
    }
   }
  
  
 // Pantalla----- 4 
  else if( estado == 4){
  background(0);
   image( FondoDelTexo3, 0, 0, width, height);
  
  image(mapa,170, 120, 300, 200);
  image(personajeMasculino, 40, 300, 160, 120);
  image(dragon, 440, 300, 160, 120); 
  }
  
 //Pantalla------ 5 
   else if( estado == 5){
    background(0);
  image( kanto, 0, 0, width, height);
    
//texto acomodado
 fill (30,50,120);   
 stroke(255);   
 strokeWeight(4);  
 rect( 20, 300, 600, 160, 10);   
    
 //borde la caja de texto  
  fill(240);  
   
  noStroke();  
  rect( 30, 310, 580, 140, 5);
  
  //texto
  
  fill(0);
  textFont(  FuenteDePokemon);
  textSize(18);
  textAlign(LEFT, TOP);
    text ( textoPantalla5, 45,yTexto5, 540, 120);
if(yTexto5 > 325) {
yTexto5 -= 1.2;
}
 
   
if(frameCount % 2 == 0){
if (indiceMapa < textoPantalla5.length()) {
  textoPantalla5 += textoPantalla5 .charAt (indiceMapa);
  
   }
  }
 }
    else if( estado == 6){
    image( fondoFinal, 0, 0, width, height); // fondo 
    
    // boton de reinicio
 fill(0); 
 stroke(255);
 strokeWeight(3);
 rect(180, 410, 280,40,10);   
 
 //texto boton   
 fill(255);
 textFont(  FuenteDePokemon);
 textAlign (CENTER, CENTER);
 textSize(22);
 text("PRESS TO RESET", 320, 430);
  }
     //  tiempo de pantalla 1 
  if ( estado == 1 && millis() - tiempoPantalla > 5000){
  estado =  2;
  tiempoPantalla = millis();
  }
  
      // tiempo de pantalla 2
  if ( estado == 2 && millis() - tiempoPantalla > 4000){
  estado = 3;
  tiempoPantalla = millis();
  }
  
      // tiempo de pantalla 3
  if( estado == 3 && millis() - tiempoPantalla > 12000){
  estado = 4;
  tiempoPantalla = millis();
  }
     // tiempo de pantalla 4
  if ( estado == 4 && millis() - tiempoPantalla > 6000){
  estado = 5;
  tiempoPantalla = millis();
  }
     
     //tiempo de pantalla 5
 if ( estado == 5 && millis() - tiempoPantalla > 8000) {
 estado = 6;
tiempoPantalla = millis();
  
 
 }
}

void mousePressed() {
if(mouseX > Botonx && mouseX < Botonx + botonAncho && mouseY > Botony && mouseY < Botony + botonAlto);
 estado = 3 ;
   if ( mouseX > 180 && mouseX < 460 && mouseY > 410 && mouseY < 450){

    // reinicia el estado
    estado = 1;

tiempoPantalla = millis();

    // reiniciar la intro de pokemon
    estrellaX = -250;
    logoX = -500;

    // reiniciar textos
    textoMostrado = "";
    indice = 1;

    textoMapaMostrado = "";
    indiceMapa = 1;
    
   ytexto3 = 500;
   yTexto5 = 500;
   tiempoPantalla = millis();
}
}

void keyPressed(){
    estado = estado + 1;
  println(estado);
  if(estado > 6);
}
