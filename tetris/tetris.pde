boolean dropping=false;
int item=4; //->random !
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
 descente_blocs(true);
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
          
           case 2:
          if(moved>=(0+unit))
            moved=moved-unit;
          
          break;
    }
    }
    
    else if(keyCode == RIGHT){
      switch(item){
            
           case 0:
         if(moved<=(220-(unit+40)) && plateau[(moved/unit)+1][(stage/unit)+1]==0 && plateau[(moved/unit)+1][(stage/unit)]==0) 
        moved=moved+unit;
          
          break;
          
          case 1:
          if(moved<=(220-(5*unit))) 
        moved=moved+unit;
        break;
        
          case 2:
          if(moved<=(220-(4*unit))) 
        moved=moved+unit;
          break;
          
          case 3:
          if(moved<=(220-(4*unit))) 
        moved=moved+unit;
          break;
 
           case 4:
          if(moved<=(220-(4*unit))) 
        moved=moved+unit;
          break;
     
          case 5:
          if(moved<=(220-(4*unit))) 
        moved=moved+unit;
          break;
     
   
         case 6:
          if(moved<=(220-(4*unit))) 
        moved=moved+unit;
          break;   } 
    }
    
     else if(keyCode == DOWN ){
        int sortie=90; 
       
       do{
         sortie=descente_blocs(false); 
        print(sortie); 
         repeatloop++;       
           loadblocks();
       }while(sortie == 0);
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
      
      case 2:
      s(moved,0+stage);
      break;
      
      case 3:
      l(moved,0+stage);
      break;
      
      case 4:
      t(moved,0+stage);
      break;
      
      case 5:
      li(moved,0+stage);
      break;
      
      case 6:
      z(moved,0+stage);
      break;
    }
  }
  
  repeatloop++;
}





