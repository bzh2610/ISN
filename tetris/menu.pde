color left_c = color(200, 200, 200);
color right_c = color(200, 200, 200);


void menu(){

    noStroke();
    fill(left_c);
    rect(0, 0, width/2, height);
    fill(right_c);
    rect(width/2, 0, width/2, height);


    fill(255, 255, 255);  
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Jouer", width/4, 268);
    text("Quitter", width/4*3, 268);
    text("TETRIS", width/2, 50);


}


void mouseMoved() {

  if (mouseX < width/2) {
    left_c= color(112, 162, 237);
    right_c= color(200, 200, 200);
  } else {
    left_c= color(200, 200, 200);
    right_c= color(241, 160, 100);
  }
}



void mouseClicked() {

    if(menu_enabled){
       if(mouseX<width/2){
       menu_enabled=false;
       game_over=false;
       stroke(0,0,0);
       }     
      
      else{
       frame.setVisible(false);
      }
    
    }
}
