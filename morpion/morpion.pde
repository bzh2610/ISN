//BASE :p
int plateau[][]= new int[3][3];
int player=1;
int winner=0;
boolean partie=true;
boolean full_plate=false;


void setup() {
  size(300, 300);
  smooth();
}

void draw() {
 
  background(255,255,255);  
  
  if(partie==true){
   line(100, 0, 100, 300);
  line(200, 0, 200, 300);
  line(0, 100, 300, 100);
  line(0, 200, 300, 200);
  for(int x=0; x<3; x++){
   for(int y=0; y<3; y++){
      if( plateau[x][y] == 1)
        ellipse(50+x*100, 50+y*100, 90, 90);
    
     else if ( plateau[x][y] == 2){
        line(5+x*100, 5+y*100, 95+x*100, 95+y*100);
        line(5+x*100, 95+y*100, 95+x*100, 5+y*100);
      }
   }
  }
  }
  
  else{
  fill(0,0,0);
  textSize(32);
  text("GAME OVER", 0, 50); 
  
  }
}

void mouseClicked() {
  
  int x_clic=mouseX/100;
  int y_clic=mouseY/100;

    
  if(player == 1){
    if( plateau[x_clic][y_clic] == 0 ){
    plateau[x_clic][y_clic]=1;
    //player++;
    IA_turn(); 
    check_plate_state();
    }
  }
    
 /* else if (player == 2)
    player--;*/
    

}



void check_plate_state (){
   
  for(int x=0; x<3; x++){
   for(int y=0; y<3; y++){
      if( plateau[x][y] != 0)
        full_plate=false;
      }
   }
   
  for(int x=0; x<3; x++){ //lignes
      if(plateau[x][0] == plateau[x][1] && plateau[x][0]== plateau[x][2] && plateau[x][2] !=0 )
        partie=false;
  }
 
  for(int y=0; y<3; y++){ //colones
      if(plateau[0][y] == plateau[1][y] && plateau[0][y] == plateau[2][y] && plateau[2][y] !=0 )
        partie=false;
  }
  
 if(plateau[0][0] == plateau[1][1] && plateau[1][1] == plateau[2][2] && plateau[2][2] !=0 ) //diagonale
        partie=false;
  
 else if(plateau[2][0] == plateau[1][1] && plateau[1][1] == plateau[0][2] && plateau[0][2] !=0 ) //diagonale
        partie=false;
  
}


void IA_turn(){
  
  boolean success=false;
  
  while(success == false){
  int x = int (random(0, 3));
  int y = int (random(0, 3));
  print(x+" "+y+" ");
  
  if(plateau[x][y] == 0){
    success=true;
    plateau[x][y]=2;
      check_plate_state();
  }
   //player--;
  }
  

  
    
}






