boolean dropping=false;
int item=1; //->random !
int stage, moved =0;
int repeatloop=0;
int plateau[][]=new int[11][22];
int unit=20;




void setup() {
  size(220, 440);
  smooth();
}





void draw() {

  if(dropping==false)
dropping=true;


else{
  background(190,190,190);
  loadblocks();
 
switch (item){
  case 0:
  carre(moved,0+stage);
  
  if(repeatloop%5==0){

    if(stage<=(420-(2*unit)) && plateau[(moved/unit)][(stage/unit)+2]==0 && plateau[(moved/unit)+1][(stage/unit)+2]==0)
    stage=stage+unit;
     
     else{ //au plus bas possible
         plateau[(moved/unit)][(stage/unit)]=1;
         plateau[(moved/unit)][(stage/unit)+1]=1;
         plateau[(moved/unit)+1][(stage/unit)]=1;
         plateau[(moved/unit)+1][(stage/unit)+1]=1;
         
                  //////////TO CHANGE
         repeatloop=stage=moved=item=1;
       }
     }
  
  delay(100);
  break;
  
  
  case 1:
  barre(moved,0+stage);
  
  if(repeatloop%5==0){

    if(stage<=(420-(1*unit)) && plateau[(moved/unit)][(stage/unit)+1]==0 && plateau[(moved/unit)+2][(stage/unit)+1]==0 && plateau[(moved/unit)+3][(stage/unit)+1]==0 )
    stage=stage+unit;
     
     else{ //au plus bas possible
         plateau[(moved/unit)][(stage/unit)]=2;
         plateau[(moved/unit)+1][(stage/unit)]=2;
         plateau[(moved/unit)+2][(stage/unit)]=2;
         plateau[(moved/unit)+3][(stage/unit)]=2;
         
         //////////TO CHANGE
         repeatloop=stage=moved=item=0;
         
       }
     }
  
  delay(100);
  break;
}


}











/*******
MOUVEMENTS
*******/


if(keyPressed){
    if(keyCode == LEFT ){
          switch(item){
            
           case 0:
          if(moved>=(0+unit))
            moved=moved-unit;
          
          break;
          
          case 1:
          if(moved>=(0+unit))
            moved=moved-unit;
          
          break;
    }
    }
    
    else if(keyCode == RIGHT){
      switch(item){
            
           case 0:
         if(moved<=(220-(unit+40))) 
        moved=amoved+unit;
          
          break;
          
          case 1:
          if(moved<=(220-(unit+80))) 
        moved=moved+unit;
          
          break;
    }
      
    }

    
    background(190,190,190);
    loadblocks();
    
    switch (item){
      case 0:
      carre(moved,0+stage);
      break;
      
      case 1:
      barre(moved,0+stage);
      break;
    }
  }
  
  repeatloop++;
}




