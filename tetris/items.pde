

void t(int x, int y){
fill(190,0,255);
rect(x,y,20,20);
rect(x+20,y,20,20);
rect(x+40,y,20,20);
rect(x+20,y+20,20,20);
}

void l(int x, int y){
fill(255,190,0);
rect(x,y,20,20);
rect(x+20,y,20,20);
rect(x+40,y,20,20);
rect(x,y+20,20,20);
}

void li(int x, int y){
fill(0,0,255);
rect(x,y,20,20);
rect(x+20,y,20,20);
rect(x+40,y,20,20);
rect(x+40,y+20,20,20);
}

void z(int x, int y){
fill(255,0,0);
rect(x,y,20,20);
rect(x+20,y,20,20);
rect(x+20,y+20,20,20);
rect(x+40,y+20,20,20);
}

void s(int x, int y){
fill(0,255,0);
rect(x+20,y,20,20);
rect(x+40,y,20,20);
rect(x,y+20,20,20);
rect(x+20,y+20,20,20);
}

void carre(int x, int y){
fill(255,255,0);
rect(x,y,20,20);
rect(x+20,y,20,20);
rect(x,y+20,20,20);
rect(x+20,y+20,20,20);
}

void barre(int x, int y){
fill(0,230,230);
rect(x,y,20,20);
rect(x+20,y,20,20);
rect(x+40,y,20,20);
rect(x+60,y,20,20);
}





/*-------------------------------------------------------------------------------------------------------
-----------------------------------------------FONCTIONS----------------------------------------------
--------------------------------------------------------------------------------------------------------*/

void loadblocks(){
 for(int y=0; y<22; y++){
        for(int i=0; i<11; i++){
      if(plateau[i][y]==0){
      print("0");
      }
      
      else{
        if(plateau[i][y]==1)
          fill(255,255,0);
        else if(plateau[i][y]==2)
          fill(0,255,255);
        
      rect(i*unit, y*unit, unit, unit);        
      print("1");
      }
    }
    print("\n");
  }
  
  print("\n\n\n\n");
  
}

