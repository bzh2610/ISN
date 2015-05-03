boolean dropping=false;
int item, stage, moved =0;
int repeatloop=0;
int plateau[][]=new int[11][22];
int unit=20;
int lenght=40;
int block_height=40;
void setup() {
  size(220, 440);
  smooth();
}



void carre(int x, int y){
fill(255,255,0);
rect(x,y,20,20);
rect(x+20,y,20,20);
rect(x,y+20,20,20);
rect(x+20,y+20,20,20);
}

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

void barre(int x, int y){
fill(0,230,230);
rect(x+20,y,20,20);
rect(x+40,y,20,20);
rect(x+60,y,20,20);
rect(x+80,y,20,20);
}


void draw() {

  /*DEBUG*/
  

    for(int y=0; y<22; y++){
        for(int i=0; i<11; i++){
      if(plateau[i][y]==0){
      print("0");
      }
      
      else{
      print("X");
      }
    }
    print("\n");
  }
  
  print("\n\n\n\n");
  //////END
  
  
if(dropping==false){
dropping=true;
}

else{
  background(190,190,190);
  
switch (item){
  case 0:
  carre(moved,0+stage);
  
  if(repeatloop%10==0){
   

    
    if(stage<=(420-block_height) && plateau[(moved/unit)][(stage/unit)+1]==0)
    stage=stage+unit;
     
     
     else{ //au plus bas possible
     
     //---> A FINIR !
     plateau[(moved/unit)][(stage/unit)]=1;
     }
  }
  
  delay(50);
  break;
}


}

  if(keyPressed){
    if(keyCode == LEFT ){
      if(moved>=(0+unit))
        moved=moved-unit;
    }
    
    else if(keyCode == RIGHT){
      if(moved<=(220-(unit+lenght))) 
        moved=moved+unit;
    }
    
      background(190,190,190);
    
    switch (item){
      case 0:
      carre(moved,0+stage);
      break;
    }
  }
  
  repeatloop++;
}





