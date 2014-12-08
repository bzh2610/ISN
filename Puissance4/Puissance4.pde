//BASE :p
int plateau[][]= new int[7][6];
int player=1;
int winner=0;

//verif. jeu est OK
boolean partie=true;
boolean full_plate=false;
//
String result;



void setup() {
  size(700, 600);
  smooth();
}

void draw() {
  background(0, 120, 255);  

  if(partie){
    for(int i=0; i<7; i++){
    line(i*100, 0, i*100, 600);
    line(0, i*100, 700, i*100);
    }
    

    for (int x=0; x<7; x++) {
      for (int y=0; y<6; y++) {
        if ( plateau[x][y] == 1) {
          fill(255, 0, 0);
          ellipse(50+x*100, 50+y*100, 90, 90);
        } else if (plateau[x][y] == 2) {
          fill(255, 255, 0);
          ellipse(50+x*100, 50+y*100, 90, 90);
        }
      }
    }
  }
  
  else{
  fill(255,255,255);
  textSize(32);
  text(result,50,50);
  text("NOTRE TEAM : #ISNDUSWAG", 50,100);
  partie=false;
  }
  
}

void mouseClicked() {

  int x_clic=mouseX/100;
  int y_clic=mouseY/100;
  boolean placed=false;

  if (player == 1) {
    
    for(int i=6; i>0 && placed==false; i--){
      if (plateau[x_clic][i-1] == 0) {
        plateau[x_clic][i-1]=1;
        check_plate_state();
        IA_turn(); 
        placed=true;
      }
    }
  }

}



void check_plate_state () {
  
///////////////////////
// COMPTE LES POINTS // 
///////////////////////

int points_rouges=0;
int point_jaunes=0;

for(int y=0; y<6; y++){ //TOUTES LES LIGNES Y
  for(int x=0; x<4; x++){ //TOUTES LES COLONNES X
    int temp=plateau[x][y];    
    boolean point=true;
    
    for(int curs_x=x; curs_x<x+4; curs_x++){ //POUR CHAQUE RANGÉE DE 4 PIONS
      if(plateau[curs_x][y]!=temp){ //SI DISCONTINUITÉ
        point=false;
      }      
    }
    
    //MODIFIER LE SCORE SI BESOIN
    if(point && temp==1)
      points_rouges++;
    else if(point && temp==2)
      point_jaunes++;
  }
}


for(int x=0; x<6; x++){ //TOUTES LES COLONNES X
  for(int y=0; y<3; y++){ //TOUTES LES COLONNES X
    int temp=plateau[x][y];    
    boolean point=true;
    
    for(int curs_y=y; curs_y<y+4; curs_y++){ //POUR CHAQUE RANGÉE DE 4 PIONS
      if(plateau[x][curs_y]!=temp){ //SI DISCONTINUITÉ
        point=false;
      }      
    }
    
    //MODIFIER LE SCORE SI BESOIN
    if(point && temp==1)
      points_rouges++;
    else if(point && temp==2)
      point_jaunes++;
  }
}



//DIAGONALE G --> D


for(int y=0; y<3; y++){ //TOUTES LES LIGNES Y
  for(int x=0; x<4; x++){ //TOUTES LES COLONNES X
    int temp=plateau[x][y];    
    boolean point=true;
    
    int curs_x=x;
    int curs_y=y;
    
    while(curs_x<x+4){
      if(plateau[curs_x][curs_y]!=temp){ //SI DISCONTINUITÉ
        point=false;
      }      
      curs_x++;
      curs_y++;
      
    }
    
    //MODIFIER LE SCORE SI BESOIN
    if(point && temp==1)
      points_rouges++;
    else if(point && temp==2)
      point_jaunes++;
  }
}


//DIAGONALE G <-- D


for(int x=0; x<4; x++){ //TOUTES LES LIGNES Y
  for(int y=0; y<3; y++){ //TOUTES LES COLONNES X
    int temp=plateau[x][y];    
    boolean point=true;
    
    int curs_x=x;
    int curs_y=y;
    
    while(curs_y<y-4){
      if(plateau[curs_x][curs_y]!=temp){ //SI DISCONTINUITÉ
        point=false;
      }      
      curs_x--;
      curs_y--;
      
    }
    
    //MODIFIER LE SCORE SI BESOIN
    if(point && temp==1)
      points_rouges++;
    else if(point && temp==2)
      point_jaunes++;
  }
}


//////////////////////
// AFFICHE LE SCORE //
//////////////////////

print("ROUGES "+points_rouges+" | JAUNES "+point_jaunes+"\n");

full_plate=true;
for (int x=0; x<7; x++) {
    for (int y=0; y<6; y++) {
      if ( plateau[x][y] == 0)
        full_plate=false;
    }
}

if(full_plate){
print("plein");
fill(0,0,0);
textSize(32);
result="ROUGES "+str(points_rouges)+" | JAUNES "+str(point_jaunes);
text(result,0,50);
partie=false;
}


}




void IA_turn() {

  boolean success=false;
  boolean placed=false;

  while (success == false) {
    int x = int (random(0, 7));
    
    for(int i=6; i>0 && placed==false; i--){
        if (plateau[x][i-1] == 0) {
          plateau[x][i-1]=2;
          placed=true;
          success=true;
          check_plate_state();
      }
    }
  }
}
