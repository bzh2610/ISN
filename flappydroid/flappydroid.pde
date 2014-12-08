//Evan OLLIVIER
//Lycée de l'iroise -TS1
//ISN- Flappy Droid

int x = 350; //abscisse du nuage
color vert=color(164, 198, 57); //couleur du robot
int y_arm=110; //ordonnée du bras
int y_head=600; //ordonnée de la tete
int  x_body=10; //abscisse du corps
int y_body=310; //ordonnée ..
int y_legs=600;
int y_fire=450;

PImage img;
int x_img=800;

PImage building;
int score=0;

int x_building=350;
int x2_building=850;
int y_building=600-166;
int r=3;
int r2=6;
PFont font;


boolean launch=false; //utilisé pour séparer la construction du lancement
boolean up=true ; //utilisé pour faire descendre ou monter le robot
boolean game=true;//partie continue


//taille de la fenetre, chargement des images
void setup() {
  size(800, 600);
  smooth();
  img = loadImage("background2.png");
  building = loadImage("building100.png");
}


//dessin à l'intérieur de la fenetre
void draw() {
  font = loadFont("LucidaConsole-32.vlw");
  textFont(font);

  if (game==true) {
    jeu();
    fill(255);

    if (launch==false)
      text("READY ???", 300, 50);

    else if (game==false)
      gameover();
    
    else if (game == true)
       text(score, 400, 50); 

    if (launch==true) {

      x_building-=1;
      x2_building-=1;

      if (keyPressed == false) { //On appuie sur aucune touche
        if (y_legs < 500) {
          y_head+=2;
          y_fire+=2;
          y_body+=2;
          y_legs+=2;
          y_arm+=2;
          if (y_fire==575)
            up=true;
        }
      } 
      
      else { //On appuie sur une tocuhe
        if (y_head > 70) {
          y_head-=2;
          y_fire-=2;
          y_body-=2;
          y_legs-=2;
          y_arm-=2;
        }
      }
    }

    if (game==true) {
      nuage()    ;
      droid_head();
    }
  } 
  
  else{
    
    if (keyPressed == true) {
      if (key == '4') {  //rejouer -> réinitialisation des variables
        print("OK");
        launch=false;
        game=true;
        x=350; //abscisse du nuage
        vert=color(164, 198, 57) ;//couleur du robot
        y_arm=110; //ordonnée du bras
        y_head=600; //ordonnée de la tete
        x_body=10; //abscisse du corps
        y_body=310; //ordonnée ..
        y_legs=600;
        y_fire=450;
        img = loadImage("background2.png");
        building = loadImage("building100.png");
        x_img=800;
        score=0;
        x_building=350;
        x2_building=850;
        y_building=600-166;
        r=3;
        r2=6;
      }
    }
  }
}


void jeu() {
 
  background(65, 82, 174);
  image(img, x_img, 0);

  // On utilise une boucle pour créer des immeubles suffisament hauts.
  for (int i=0; i<r+1; i++)
    image(building, x_building, 600-i*32);

  for (int i=0; i<9-r; i++)
    image(building, x_building, i*32);   

  for (int i=0; i<r2+1; i++)
    image(building, x2_building, 600-i*32);    

  for (int i=0; i<9-r2; i++)
    image(building, x2_building, i*32);    


  x_img--; // L'image de fond se déplace vers la droite

  //Quand les buildings ou le fond arrivent tout à gauche de l'écran : les replacer à droite.
  //random défini une taille d'immeuble aléatoire.

  if (x_img < -2400)
    x_img = 800;

  if (x_building==-301) {
    x_building = 800;
    r = int (random(1, 10));
  }

  if (x2_building==-301) {
    x2_building = 800;
    r2 = int (random(1, 10));
  }

  //a et a2 servent a définir la hauteur des tours a. 
  int a=9-r;
  int a2=9-r2;

  //Ce code défini les situations dans lesquelles la partie est perdu. 
  if (y_legs >= 500 && launch==true)
    game=false;

  else if (x_building>75 && x_building<235 && y_legs+100>=600-r*32)
    game=false;

  else if (x_building>75 && x_building<235 && y_head-67<=a*32)
    game=false;

  else if (x2_building>75 && x2_building<235 && y_legs+100>=600-r2*32)
    game=false;

  else if (x2_building>75 && x2_building<235 && y_head-67<=a2*32)
    game=false;

  //Un building est franchis 
  if (x_building == 5)
    score+=1;

  else if (x2_building == 5)
    score+=1;
}





void gameover() {
  background(65, 82, 174);
  text("GAME OVER !", 300, 250);
  String scorestring = "SCORE : " +str(score) ;
  text(scorestring, 10, 60);
  text("PRESS 4 TO TRY AGAIN", 200, 350)  ;
  text("BY Bzh2610", 290, 450)         ;

  BufferedReader reader;
  String line;
  int meilleur_score=0;
  PrintWriter writer;

  reader = createReader("output.txt");

  try {
    line = reader.readLine();
  } 
  catch (IOException e) {
    e.printStackTrace();
    line = null;
  }
  if (line != null) {
    
    String[] parties_fichier = split(line, ' ');
    meilleur_score = int(parties_fichier[0]);

    if (meilleur_score < score){ //si le joeur réalise son meilleur score, l'écrire dans le fichier
      writer = createWriter("output.txt");
      writer.println(score);
      writer.flush();
      writer.close();
      meilleur_score=score;
    }
  }
  String bestscorestring = "BEST SCORE : " +str(meilleur_score);
  text(bestscorestring, 10, 120);
}




void nuage() { //dessine le nuage

    noStroke(); //pas de bordure
  fill(255);
  ellipse(x, 125, 70, 60); //gauche
  ellipse(x+50, 95, 80, 60); //haut
  ellipse(x+100, 125, 70, 60); //droite
  ellipse(x+50, 145, 80, 60); //bas
  x+=1;
  if (x> width) //le nuage revient à gauche
    x=-150;
}



void droid_head() {
 noStroke();
  fill(vert);
  arc(200, y_head, 133, 133, PI, PI+PI);
  fill(255);
  ellipse(165, y_head-35, 15, 15);
  ellipse(235, y_head-35, 15, 15);

  if (y_head > 300 && launch==false) //fait descendre la tete pdt l'animation de construction
    y_head-=2;

  else
    droid_body();
}        



void droid_body() {
  noStroke();
  fill(vert);
  rect(x_body, y_body, 130, 130, 0, 0, 25, 25);
  if (x_body >= 133) //meme principe que pour la tete sauf que le corps bouge de gauche à droite
    droid_arms();

  else
    x_body+=2;
}



void droid_arms() {
  fill(vert);
  rect(95, y_arm, 27, 100, 25, 25, 25, 25);//bras gauche du robot
  rect(275, y_arm, 27, 100, 25, 25, 25, 25);//bras droit du robot

  if (y_arm < 285 && launch==false) //vu précédement
    y_arm+=2;

  droid_legs();
}



void droid_legs() {
  rect(162, y_legs, 27, 100, 25, 25, 25, 25);
  rect(212, y_legs, 27, 100, 25, 25, 25, 25);

  if (keyPressed)
    fire();

  if (y_legs <= 380)
    launch=true;


  if (y_legs > 380 && launch==false)
    y_legs-=3;
}        

void fire() {
  fill(255);
  ellipse(202, y_fire+10, 70, 150);
  fill(58, 168, 229);
  ellipse(202, y_fire, 50, 120);
  fill(vert);
  rect(162, y_legs, 27, 100, 25, 25, 25, 25);
  rect(212, y_legs, 27, 100, 25, 25, 25, 25);
  rect(x_body, y_body, 130, 130, 0, 0, 25, 25);
}
