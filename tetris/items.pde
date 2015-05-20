//BLOCS DIFFÉRENTS

void t(int x, int y){
fill(190,0,255);
rect(x,y,unit,unit);
rect(x+unit,y,unit,unit);
rect(x+(2*unit),y,unit,unit);
rect(x+unit,y+unit,unit,unit);
}

void t1(int x, int y){
fill(190,0,255);
rect(x,y,unit,unit);
rect(x+unit,y,unit,unit);
rect(x+unit,y-unit,unit,unit);
rect(x+unit,y+unit,unit,unit);
}

//////////////////////

void l(int x, int y){
fill(255,190,0);
rect(x,y,unit,unit);
rect(x+unit,y,unit,unit);
rect(x+(2*unit),y,unit,unit);
rect(x,y+unit,unit,unit);
}


void l1(int x, int y){
fill(255,190,0);
rect(x,y,unit,unit);
rect(x+unit,y,unit,unit);
rect(x+unit,y+unit,unit,unit);
rect(x+unit,y+(2*unit),unit,unit);
}


void l2(int x, int y){
fill(255,190,0);
rect(x,y,unit,unit);
rect(x,y+unit,unit,unit);
rect(x-unit,y+unit,unit,unit);
rect(x-(2*unit),y+unit,unit,unit);
}



/////////////////////

void li(int x, int y){
fill(0,30,240);
rect(x,y,unit,unit);
rect(x+unit,y,unit,unit);
rect(x+(2*unit),y,unit,unit);
rect(x+(2*unit),y+unit,unit,unit);
}

void li1(int x, int y){
fill(0,30,240);
rect(x,y,unit,unit);
rect(x+unit,y,unit,unit);
rect(x+unit,y-unit,unit,unit);
rect(x+unit,y-(2*unit),unit,unit);
}

//////////////////////

void z(int x, int y){
fill(255,0,0);
rect(x,y,unit,unit);
rect(x+unit,y,unit,unit);
rect(x+unit,y+unit,unit,unit);
rect(x+(2*unit),y+unit,unit,unit);
}

void z1(int x, int y){
fill(255,0,0);
rect(x,y,unit,unit);
rect(x+unit,y,unit,unit);
rect(x+unit,y-unit,unit,unit);
rect(x,y+unit,unit,unit);
}



//////////////////////
void s(int x, int y){
fill(0,255,0);
rect(x+unit,y,unit,unit);
rect(x+(2*unit),y,unit,unit);
rect(x,y+unit,unit,unit);
rect(x+unit,y+unit,unit,unit);
}

void s1(int x, int y){
fill(0,255,0);
rect(x,y,unit,unit);
rect(x+unit,y,unit,unit);
rect(x,y-unit,unit,unit);
rect(x+unit,y+unit,unit,unit);
}

///////////////////////
void carre(int x, int y){
fill(255,255,0);
rect(x,y,unit,unit);
rect(x+unit,y,unit,unit);
rect(x,y+unit,unit,unit);
rect(x+unit,y+unit,unit,unit);
}

void barre(int x, int y){
fill(0,230,230);
rect(x,y,unit,unit);
rect(x+unit,y,unit,unit);
rect(x+(2*unit),y,unit,unit);
rect(x+(3*unit),y,unit,unit);
}

void barre1(int x, int y){
fill(0,230,230);
rect(x,y,unit,unit);
rect(x,y-(3*unit),unit,unit);
rect(x,y-(2*unit),unit,unit);
rect(x,y-unit,unit,unit);
}




/*La fonction loadblocks(); va interprêter le contenu de plateau[x][y]
Selon les valeurs contenues dans le tableau, elle fera apparaître des 
carrés (blocs) de différentes couleurs.
*/

void loadblocks(){
 for(int y=0; y<22; y++){
        for(int i=0; i<11; i++){ //dessine
      if(plateau[i][y]==0){

      }
      
      else{
        switch(plateau[i][y]){
         case 0:
         break;
          
         case 1:
         fill(255,255,0);
        break;
        
        case 2:
          fill(0,255,255);
         break;
         
         case 3:
          fill(0,255,0);     
          break;
   
         case 4:
          fill(250,190,0);     
          break;
          
          case 5:
          fill(190,0,255);    
          break;
          
          case 6:
          fill(0,30,240);
          break;
          
          case 7:
          fill(255,0,0);
          break;
          
          
          default:
          fill(0,0,0); 
          break;
        }
      rect(i*unit, y*unit, unit, unit);        
      }
          print(plateau[i][y]);
    }

    print("\n");
  }
  
  print("\n\n\n\n");
  
}




