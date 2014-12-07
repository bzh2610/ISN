//BASE :p
int plateau[][]= new int[7][6];
int player=1;
int winner=0;
boolean partie=true;
boolean full_plate=false;


void setup() {
  size(700, 600);
  smooth();
}

void draw() {

  background(0, 120, 255);  


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

  if (partie!=true) {  
   fill(255, 255, 255);
    textSize(32);
    text("GAME OVER", 0, 50);
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
/*
DEPRECATED : USED FOR TIC TAC TOE
TO ADAPT :)

  for (int x=0; x<3; x++) {
    for (int y=0; y<3; y++) {
      if ( plateau[x][y] != 0)
        full_plate=false;
    }
  }

  for (int x=0; x<3; x++) { //lignes
    if (plateau[x][0] == plateau[x][1] && plateau[x][0]== plateau[x][2] && plateau[x][2] !=0 )
      partie=false;
  }

  for (int y=0; y<3; y++) { //colones
    if (plateau[0][y] == plateau[1][y] && plateau[0][y] == plateau[2][y] && plateau[2][y] !=0 )
      partie=false;
  }

  if (plateau[0][0] == plateau[1][1] && plateau[1][1] == plateau[2][2] && plateau[2][2] !=0 ) //diagonale
    partie=false;

  else if (plateau[2][0] == plateau[1][1] && plateau[1][1] == plateau[0][2] && plateau[0][2] !=0 ) //diagonale
    partie=false;*/
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





