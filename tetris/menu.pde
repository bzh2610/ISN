color left_c = color(200, 200, 200);
color right_c = color(200, 200, 200);

/*La fonction menu() est appelée au démarrage du jeu:
c'est grâce à elle que la partie pourra commencer.
*/
void menu(){

    noStroke();
    fill(left_c);
    rect(0, 0, width/2, height);
    fill(right_c);
    rect(width/2, 0, width/2, height);


    fill(255, 255, 255);  
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Jouer", width/4, height/2);
    text("Quitter", width/4*3, height/2);
    text("TETRIS", width/2, height*1/10);


}



/*
Les fonctions qui suivent sont utilisées pour gérer les déplacements dans le menu
*/
void mouseMoved() {

  if (mouseX < width/2) { //Souris positionnée au dessus du bouton "Jouer" 
    left_c= color(112, 162, 237);
    right_c= color(200, 200, 200);
  } else { //Souris positionnée au dessus du bouton "Quitter" 
    left_c= color(200, 200, 200);
    right_c= color(241, 160, 100);
  }
}



void mouseClicked() {

    if(menu_enabled){
       if(mouseX<width/2){ //Clic sur "Jouer"
       menu_enabled=false;
       game_over=false;
       stroke(0,0,0);
       }     
      
      else{ //Clic sur "Quitter"
       frame.setVisible(false);
      }
    
    }
}
