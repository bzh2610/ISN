boolean dropping=false;
int item=3; //->random !
int stage, moved =0;
int repeatloop=0;
int plateau[][]=new int[13][23];
int unit=20;



void setup() {
  size(220, 440);
  smooth();
 // item=int(random(0, 9));
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
          if(moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)-1][(stage/20)+1]==0)
            moved=moved-unit;
             
          break;
          
          case 1:
          if(moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0)
            moved=moved-unit;
          
          break;
          
           case 2:
          if(moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)+1]==0 && plateau[(moved/20)][(stage/20)]==0 )
            moved=moved-unit;
          break;
          
          case 3:
          if(moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)-1][(stage/20)+1]==0 )
            moved=moved-unit;
          break;
          
          
                     case 4:
          if(moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)+1]==0 )
            moved=moved-unit;
          break;
          
          
                     case 5:
          if(moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)+2]==0)
            moved=moved-unit;
          break;
          
          
                     case 6:
          if(moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)+1]==0)
            moved=moved-unit;
          break;
          
                    case 7:
          if(moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)-1]==0 && plateau[(moved/20)][(stage/20)-2]==0)
            moved=moved-unit;
          break;
  
  
                         case 8:
          if(moved>=(unit) && plateau[(moved/20)][(stage/20)-1]==0 && plateau[(moved/20)][(stage/20)+1]==0  && plateau[(moved/20)-1][(stage/20)]==0)
            moved=moved-unit;
          break;      
          
          
                       case 9:
          if(moved>=(unit) && plateau[(moved/20)][(stage/20)-1]==0 && plateau[(moved/20)][(stage/20)-2]==0  && plateau[(moved/20)][(stage/20)-3]==0  && plateau[(moved/20)][(stage/20)]==0 )
            moved=moved-unit;
          break;        
          
                    case 10:
          if(moved>=(unit) && plateau[(moved/20)-1][(stage/20)-1]==0 && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)+1]==0 )
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
          if(moved<=(220-(4*unit)) && plateau[(moved/unit)+2][(stage/unit)+1]==0 && plateau[(moved/unit)+3][(stage/unit)]==0) 
        moved=moved+unit;
          break;
          
          case 3:
          if(moved<=(220-(4*unit)) && plateau[(moved/unit)+3][(stage/unit)]==0 && plateau[(moved/unit)+1][(stage/unit)+1]==0) 
        moved=moved+unit;
          break;
 
           case 4:
          if(moved<=(220-(4*unit)) && plateau[(moved/unit)+3][(stage/unit)]==0 && plateau[(moved/unit)+2][(stage/unit)+1]==0) 
        moved=moved+unit;
          break;
     
          case 5:
          if(moved<=(220-(4*unit))) 
        moved=moved+unit;
          break;
     
   
         case 6:
          if(moved<=(220-(4*unit))) 
        moved=moved+unit;
          break;
          
             
         case 7:
          if(moved<=(220-(3*unit))) 
        moved=moved+unit;
          break;
          
         case 8:
          if(moved<=(220-(3*unit))) 
        moved=moved+unit;
        break;
        
           case 9:
          if(moved<=(220-(unit))) 
        moved=moved+unit;
        break;
        
        case 10:
          if(moved<=(220-(unit))) 
        moved=moved+unit;
        break;  
   
    } 
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


  else if(keyCode == UP){
  
  switch (item){
  
      case 1:
      barre1(moved,0+stage);
      item=9;
      break;
      
      case 2:
      s1(moved,0+stage);
      item=10;
      break;
      
      case 3:
      l1(moved,0+stage);
      item=7;
      break;
      
      case 4:
      t1(moved,0+stage);
      item=8;
      break;
      
      case 5:
      li(moved,0+stage);
      break;
      
      case 6:
      z(moved,0+stage);
      break;
      
      /*

      */
       
      
      case 8:
      t1(moved,0+stage);
      item=4;
      break;
         
      case 9:
      barre(moved,0+stage);
      item=1;
      break;      
            
      case 10:
      s(moved,0+stage);
      item=2;
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
      
      case 7:
      l1(moved,0+stage);
      break;
      
      
      case 8:
      t1(moved,0+stage);
      break;
      
      case 9:
      barre1(moved,0+stage);
      break;
      
      case 10:
      s1(moved,0+stage);
      break;
    }
  }
  
  repeatloop++;
}





