 boolean dropping=false;
boolean game_over=false;
boolean menu_enabled=true;
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

  if (menu_enabled)
    menu();

  else { //vérfie que la ligne la plus haute est libre (pour ajouter un bloc).
    for (int i=0; i<12; i++) {
      if (plateau[i][0] != 0) {
        game_over=true;
      }
    }


    if (!game_over) { //Si la partie continue
      if (dropping==false) //delai de 0.5S avant le debut de la descente des blocs
        dropping=true;


       else {
        background(190, 190, 190);
        loadblocks();
        descente_blocs(true);
       }



      /*****************************
      *****Gestion des mouvements***
      *****************************/


      if (keyPressed) {

        if (keyCode == LEFT ) {


          switch(item) {

          case 0:
            if (moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)-1][(stage/20)+1]==0)
              moved=moved-unit;

            break;

          case 1:
            if (moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0)
              moved=moved-unit;

            break;

          case 2:
            if (moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)+1]==0 && plateau[(moved/20)][(stage/20)]==0 )
              moved=moved-unit;
            break;

          case 3:
            if (moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)-1][(stage/20)+1]==0 )
              moved=moved-unit;
            break;


          case 4:
            if (moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)+1]==0 )
              moved=moved-unit;
            break;


          case 5:
            if (moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)+2]==0)
              moved=moved-unit;
            break;


          case 6:
            if (moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)+1]==0)
              moved=moved-unit;
            break;

          case 7:
            if (moved>=(0+unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)-1]==0 && plateau[(moved/20)][(stage/20)-2]==0)
              moved=moved-unit;
            break;


          case 8:
            if (moved>=(unit) && plateau[(moved/20)][(stage/20)-1]==0 && plateau[(moved/20)][(stage/20)+1]==0  && plateau[(moved/20)-1][(stage/20)]==0)
              moved=moved-unit;
            break;      


          case 9:
            if (moved>=(unit) && plateau[(moved/20)][(stage/20)-1]==0 && plateau[(moved/20)][(stage/20)-2]==0  && plateau[(moved/20)][(stage/20)-3]==0  && plateau[(moved/20)][(stage/20)]==0 )
              moved=moved-unit;
            break;        

          case 10:
            if (moved>=(unit) && plateau[(moved/20)-1][(stage/20)-1]==0 && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)+1]==0 )
              moved=moved-unit;
            break;  

          case 11:
            if (moved>=(unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)+1]==0 && plateau[(moved/20)][(stage/20)+2]==0 )
              moved=moved-unit;
            break;    

          case 12:
            if (moved>=(unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)][(stage/20)-1]==0 && plateau[(moved/20)-1][(stage/20)+1]==0 )
              moved=moved-unit;
            break;
            
            
           case 13:
            if (moved>=(3*unit) && plateau[(moved/20)-1][(stage/20)]==0 && plateau[(moved/20)-3][(stage/20)+1]==0 )
              moved=moved-unit;
            break;
          }
        } 
        
        
        else if (keyCode == RIGHT) {
          switch(item) {

          case 0:
            if (moved<=(220-(unit+40)) && plateau[(moved/unit)+1][(stage/unit)+1]==0 && plateau[(moved/unit)+1][(stage/unit)]==0) 
              moved=moved+unit;

            break;

          case 1:
            if (moved<=(220-(5*unit))) 
              moved=moved+unit;
            break;

          case 2:
            if (moved<=(220-(4*unit)) && plateau[(moved/unit)+2][(stage/unit)+1]==0 && plateau[(moved/unit)+3][(stage/unit)]==0) 
              moved=moved+unit;
            break;

          case 3:
            if (moved<=(220-(4*unit)) && plateau[(moved/unit)+3][(stage/unit)]==0 && plateau[(moved/unit)+1][(stage/unit)+1]==0) 
              moved=moved+unit;
            break;

          case 4:
            if (moved<=(220-(4*unit)) && plateau[(moved/unit)+3][(stage/unit)]==0 && plateau[(moved/unit)+2][(stage/unit)+1]==0) 
              moved=moved+unit;
            break;

          case 5:
            if (moved<=(220-(4*unit))) 
              moved=moved+unit;
            break;


          case 6:
            if (moved<=(220-(4*unit))) 
              moved=moved+unit;
            break;


          case 7:
            if (moved<=(220-(3*unit))) 
              moved=moved+unit;
            break;

          case 8:
            if (moved<=(220-(3*unit))) 
              moved=moved+unit;
            break;

          case 9:
            if (moved<=(220-(2*unit))) 
              moved=moved+unit;
            break;

          case 10:
            if (moved<=(220-(unit))) 
              moved=moved+unit;
            break;  

          case 11:
            if (moved<=(220-(3*unit))) 
              moved=moved+unit;
            break;  

          case 12:
            if (moved<=(220-(3*unit))) 
              moved=moved+unit;
            break;
            
            
          case 13:
            if (moved<=(220-(2*unit))) 
              moved=moved+unit;
            break;
          }
        } 
        
        
        else if (keyCode == DOWN ) {
          int sortie=90; 

          do {
            sortie=descente_blocs(false); 
            print(sortie); 
            repeatloop++;       
            loadblocks();
          }
          while (sortie == 0);
        }
       
       
        else if (keyCode == UP) {

          switch (item) {

          case 1:
            barre1(moved, stage);
            item=9;
            break;

          case 2:
            s1(moved, stage);
            item=10;
            break;

          case 3:
            l1(moved, stage);
            item=11;
            break;

          case 4:
            t1(moved, stage);
            item=8;
            break;

          case 5:
            li1(moved, stage);
            item=7;
            break;

          case 6:
            z1(moved, stage);
            item=12;
            break;

            /*

             */

          case 7:
            li(moved, stage);
            item=5;
            break;

          case 8:
            t(moved, stage);
            item=4;
            break;

          case 9:
            barre(moved, stage);
            item=5;
            break;      

          case 10:
            s(moved, stage);
            item=2;
            break;

          case 11:
            l2(moved, stage);
            item=13;
            break;

          /*

             */

          case 12:
            z(moved, stage);
            item=6;
            break;
            
            
            
           case 13:
            l(moved, stage);
            item=3;
            break;

          }
        }

        background(190, 190, 190);
        loadblocks();

        switch (item) {
        case 0:
          carre(moved, stage);
          break;

        case 1:
          barre(moved, stage);
          break;

        case 2:
          s(moved, stage);
          break;

        case 3:
          l(moved, stage);
          break;

        case 4:
          t(moved, stage);
          break;

        case 5:
          li(moved, stage);
          break;

        case 6:
          z(moved, stage);
          break;




        case 7:
          li1(moved, stage);
          break;

        case 8:
          t1(moved, stage);
          break;

        case 9:
          barre1(moved, stage);
          break;

        case 10:
          s1(moved, stage);
          break;

        case 11:
          l1(moved, stage);
          break;

        case 12:
          z1(moved, stage);
          break;
          
          
          
          
         case 13:
          l2(moved, stage);
          break;
          
        }
      }

      repeatloop++;
    }
  }
}



