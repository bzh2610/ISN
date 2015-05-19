//#include "Tlc5940.h"
int minutes=0;
int heure=1;
int r=4000;
int v=0;
int b=0;

void led(int number, int r, int v, int b){
  
    /*if(number<22){
    Tlc.set(number*3-3+16, r*2);
    Tlc.set(number*3-2+16, v*2);
    Tlc.set(number*3-1+16, b*2);
    }
    
    else{
    Tlc.set(number*3-2+16, r*2);
    Tlc.set(number*3-1+16, v*2);
    Tlc.set(number*3-0+16, b*2);
    }*/
}

void initialisation(){
  //il est
  for(int i=1; i<=6; i++){
    led(i, r, v, b);
  }
  
  led(3,0,0,0);
  
  //heures
  
  for(int i=60; i<=66; i++){
    led(i, r, v, b);
  }
  
}

  
void setup()
{ 
  Tlc.init(); 
}

void loop()
{ 
   
  Tlc.clear();
  
  ///////////
 //  initialisation();  
  //////////
  switch(heure){
    case 0:
    //minuit
      for(int i=12; i<=17; i++){
      led(i, r, v, b);
      }    
     
     //efface heure
     for(int i=60; i<=66; i++){
      led(i, 0, 0, 0);
    } 
     break;
     
     case 1:
     led(53,r,v,b);
     led(54,r,v,b);
     led(55,r,v,b);   
     break;
     
     case 2:
     led(15,r,v,b);
     led(16,r,v,b);    
     led(17,r,v,b);
     led(18,r,v,b);    
     break;
     
     case 3:
      for(int i=23; i<=27; i++){
      led(i, r, v, b);
      }     
     break;
    
     case 4:
      for(int i=33; i<=38; i++){
      led(i, r, v, b);
      }  
     break;
     
     case 5:
      for(int i=45; i<=48; i++){
      led(i, r, v, b);
      }   
     break;
     
     case 6:
     led(27,r,v,b);
     led(28,r,v,b);    
     led(29,r,v,b);
     break;
     
     case 7:
      for(int i=49; i<=52; i++){
      led(i, r, v, b);
      }  
     break;
     
     case 8:
      for(int i=56; i<=59; i++){
      led(i, r, v, b);
      }  
     break;
     
     case 9:
       for(int i=8; i<=11; i++){
      led(i, r, v, b);
      }  
     break;
     
     case 10:
      for(int i=8; i<=11; i++){
      led(i, r, v, b);
      }  
     break;
     
     case 11:
      for(int i=27; i<=30; i++){
      led(i, 2000, 2000, 2000);
      }  
     break;
     
     case 12:
      for(int i=40; i<=44; i++){
      led(i, r, v, b);
      }  
     break;
    
    
  } 
  
  
  
    switch(minutes){
    
      case 10:
        led(75,000,0,4000);
        led(76,000,0,4000);
        led(77,000,0,4000);

     break; 
  }


  led(67,0,0,0);
  led(66,0,0,0);
  Tlc.update();
  
  delay(100);
}
