int plateau[][]= new int[3][3]; //plateau
int player=1;
boolean partie, full_plate =true;
String result="";

void setup() {
  size(300, 300);
  smooth();
}

void draw() {
  background(255,255,255);  
  line(100, 0, 100, 300);//DELIMITE COLONNES
  line(200, 0, 200, 300);
  line(0, 100, 300, 100);
  line(0, 200, 300, 200);
  
  for(int x=0; x<3; x++){ //POUR CHAQUE CASE DU TABLEAU
   for(int y=0; y<3; y++){
      if( plateau[x][y] == 1) //AFFICHER ROND
        ellipse(50+x*100, 50+y*100, 90, 90);
 
     else if ( plateau[x][y] == 2){ //AFFICHER CROIX
        line(5+x*100, 5+y*100, 95+x*100, 95+y*100);
        line(5+x*100, 95+y*100, 95+x*100, 5+y*100);
      }
   }
  }
  
  if(!partie){ //SI LA PARTIE EST TERMINÉE
  fill(0,0,0);
  textSize(24);
  textAlign(CENTER, CENTER);
  text(result, 150, 50);
  fill(255,255,255);
  }
}



void mouseClicked() { 
  if(!partie){ //RECOMMENCER (PARTIE FINIE)
  partie=true;
  plateau= new int[3][3];
  }
 
  else if (player == 1){
    if( plateau[mouseX/100][mouseY/100] == 0 ){ //SI CASE VIDE, PLACER LE PION
    plateau[mouseX/100][mouseY/100]=1;
    check_plate_state();
    IA_turn(); 
    }
  }
}


void resultat(int temp) { //AFFICHER LE GAGNANT
  if (temp==1) 
    result="Les cercles ont gagné";
  else if (temp==2)
    result="Les croix ont gagné"; 
  partie=false;
} 


void check_plate_state (){   
  for(int x=0; x<3; x++){ //VEIFIE LIGNE PAR LIGNE
      if(plateau[x][0] == plateau[x][1] && plateau[x][0]== plateau[x][2] && plateau[x][2] !=0 )
        resultat(plateau[x][0]);
  }
 
  for(int y=0; y<3; y++){ //COLONNE PAR COLONNE
      if(plateau[0][y] == plateau[1][y] && plateau[0][y] == plateau[2][y] && plateau[2][y] !=0 )
        resultat(plateau[0][y]);
  }
  
 if(plateau[0][0] == plateau[1][1] && plateau[1][1] == plateau[2][2] && plateau[2][2] !=0 ) //DIAGONALE G --> D
        resultat(plateau[0][0]);
  
 else if(plateau[2][0] == plateau[1][1] && plateau[1][1] == plateau[0][2] && plateau[0][2] !=0 ) //DIAGONALE D-->G
        resultat(plateau[2][0]);
 
  full_plate=true;
  for(int x=0; x<3; x++){ //LE PLATEAU EST IL PLEIN ?
   for(int y=0; y<3; y++){
      if( plateau[x][y] == 0)
        full_plate=false;
   }}
   
   if (full_plate){ //-> LE PLATEAU EST PLEIN, PAS DE GAGNANT
   result="Pas de gagnant !";
   partie=false;
   } 
}


void IA_turn() {
  if(partie){
  boolean success=false;

  while (success == false) {
    int allignes=0; 
    for (int x=0; x<3; x++) {
      allignes=0;
      
      for (int y=0; y<3; y++) {
        if (plateau[x][y]==1) {
          allignes++;
        } else if (plateau[x][y]==2) {
          allignes=-10;
        }
      }

      if (allignes==2) {
        for (int y=0; y<3; y++) {
          if (plateau[x][y] == 0) {
            success=true;
            plateau[x][y]=2;
            check_plate_state();
          }
        }
      }
      
    }


    if (success==false) {
      int x2 = int (random(0, 3));
      int y2 = int (random(0, 3));
      if (plateau[x2][y2] == 0) {
        success=true;
        plateau[x2][y2]=2;
        check_plate_state();
      }
    }
  }
  }
}
