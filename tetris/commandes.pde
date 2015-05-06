int descente_blocs(boolean wait){

  int sortie=0;

  
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
         repeatloop=stage=moved=0;
         item=int(random(0, 7));
           sortie=1;
       }
     }
  
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
         repeatloop=stage=moved=0;
         item=int(random(0, 7));
           sortie=1;
         
       }
     }
  
  break;
  
  
    case 2:
  s(moved,0+stage);
  
  if(repeatloop%5==0){

    if(stage<=(420-(2*unit)) && plateau[(moved/unit)][(stage/unit)+2]==0 && plateau[(moved/unit)+1][(stage/unit)+2]==0 && plateau[(moved/unit)+2][(stage/unit)+1]==0)
    stage=stage+unit;
     
     else{ //au plus bas possible
         plateau[(moved/unit)][(stage/unit)+1]=3;
         plateau[(moved/unit)+1][(stage/unit)+1]=3;
         plateau[(moved/unit)+1][(stage/unit)]=3;
         plateau[(moved/unit)+2][(stage/unit)]=3;
         
         //////////TO CHANGE
         repeatloop=stage=moved=item=0;
         item=int(random(0, 7));
           sortie=1;
       }
     }
  
  break;
  
  
    
    case 3:
  l(moved,0+stage);
  
  if(repeatloop%5==0){

    if(stage<=(420-(2*unit)) && plateau[(moved/unit)][(stage/unit)+2]==0 && plateau[(moved/unit)+1][(stage/unit)+1]==0 && plateau[(moved/unit)+2][(stage/unit)+1]==0)
    stage=stage+unit;
     
     else{ //au plus bas possible
         
         plateau[(moved/unit)][(stage/unit)]=4;
         plateau[(moved/unit)+1][(stage/unit)]=4;
         plateau[(moved/unit)+2][(stage/unit)]=4;
         plateau[(moved/unit)][(stage/unit)+1]=4;
         
         //////////TO CHANGE
         repeatloop=stage=moved=item=0;
         item=int(random(0, 7));
         sortie=1;
       }
     }
 
  break;
  
  
   case 4:
  t(moved,0+stage);
  
  if(repeatloop%5==0){

    if(stage<=(420-(2*unit)) && plateau[(moved/unit)][(stage/unit)+1]==0 && plateau[(moved/unit)+1][(stage/unit)+2]==0 && plateau[(moved/unit)+2][(stage/unit)+1]==0)
    stage=stage+unit;
     
     else{ //au plus bas possible
         
         plateau[(moved/unit)][(stage/unit)]=5;
         plateau[(moved/unit)+1][(stage/unit)+1]=5;
         plateau[(moved/unit)+1][(stage/unit)]=5;
         plateau[(moved/unit)+2][(stage/unit)]=5;
         
         //////////TO CHANGE
         repeatloop=stage=moved=item=0;
         item=int(random(0, 7));
         sortie=1;
       }
     }
 
  break;
  
  
     case 5:
  li(moved,0+stage);
  
  if(repeatloop%5==0){

    if(stage<=(420-(2*unit)) && plateau[(moved/unit)][(stage/unit)+1]==0 && plateau[(moved/unit)+1][(stage/unit)+1]==0 && plateau[(moved/unit)+2][(stage/unit)+2]==0)
    stage=stage+unit;
     
     else{ //au plus bas possible
         
         plateau[(moved/unit)][(stage/unit)]=6;
         plateau[(moved/unit)+1][(stage/unit)]=6;
         plateau[(moved/unit)+2][(stage/unit)]=6;
         plateau[(moved/unit)+2][(stage/unit)+1]=6;
         
         //////////TO CHANGE
         repeatloop=stage=moved=item=0;
         item=int(random(0, 7));
         sortie=1;
       }
     }
 
  break;
  
  
       case 6:
  z(moved,0+stage);
  
  if(repeatloop%5==0){

    if(stage<=(420-(2*unit)) && plateau[(moved/unit)][(stage/unit)+1]==0 && plateau[(moved/unit)+1][(stage/unit)+2]==0 && plateau[(moved/unit)+2][(stage/unit)+2]==0)
    stage=stage+unit;
     
     else{ //au plus bas possible
         
         plateau[(moved/unit)][(stage/unit)]=7;
         plateau[(moved/unit)+1][(stage/unit)]=7;
         plateau[(moved/unit)+1][(stage/unit)+1]=7;
         plateau[(moved/unit)+2][(stage/unit)+1]=7;
         
         //////////TO CHANGE
         repeatloop=stage=moved=item=0;
         item=int(random(0, 7));
         sortie=1;
       }
     }
 
  break;
  
}

  if(wait==true){
    delay(100);
  }
  
verifier();
return sortie;
}








void verifier(){
  
  for(int j=1; j<22; j++){
     boolean plein=true;
     
     
     for(int i=0; i<11; i++){
        if(plateau[i][j]==0)
        plein=false;
     }
     
     if(plein==true){
     for(int i=0; i<11; i++){
        plateau[i][j]=0;
     }
  }
}
}
