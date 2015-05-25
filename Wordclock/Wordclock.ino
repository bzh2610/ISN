#include "Tlc5940.h"
int heure=15;
int minutes=15;
int r=4000;
int v=0;
int b=0;
int repetion=0;

void led(int number, int r, int v, int b){
  
    if(number<22){
    Tlc.set(number*3-3+16, r*2);
    Tlc.set(number*3-2+16, v*2);
    Tlc.set(number*3-1+16, b*2);
    }
    
    else{
    Tlc.set(number*3-5+16, r*2);
    Tlc.set(number*3-4+16, v*2);
    Tlc.set(number*3-3+16, b*2);
    }
}

  
void setup()
{ 
 Tlc.init(); 
}

void loop(){    
 Tlc.clear();
  
  switch(heure){
    case 0:
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
     led(57,r,v,b);
     led(58,r,v,b);
     led(59,r,v,b);
     break;
   
   case 3:  
   led(17,r,v,b);
   led(18,r,v,b);
   led(19,r,v,b);
   led(20,r,v,b);
   led(21,r,v,b);
   break;
   
   case 4 :
   led(34,r,v,b);
   led(35,r,v,b);
   led(36,r,v,b);
   led(37,r,v,b);
   led(38,r,v,b);
   led(39,r,v,b);
   break;
   
   case 5:
   led(49,r,v,b);
   led(50,r,v,b);
   led(51,r,v,b);
   led(52,r,v,b);
   break;
   
   case 6:
   led(31,r,v,b);
   led(32,r,v,b);
   led(33,r,v,b);
   break;
   
   case 7:
   led(23,r,v,b);
   led(24,r,v,b);
   led(25,r,v,b);
   led(26,r,v,b);
   break;
   
   case 8:
   led(45,r,v,b);
   led(46,r,v,b);
   led(47,r,v,b);
   led(48,r,v,b);
   break;
   
   case 9:
   led(8,r,v,b);
   led(9,r,v,b);
   led(10,r,v,b);
   led(11,r,v,b);
   break;
   
   case 10:
   led(42,r,v,b);
   led(43,r,v,b);
   led(44,r,v,b);
   break;
   
   case 11:
   led(27,r,v,b);
   led(28,r,v,b);
   led(29,r,v,b);
   led(30,r,v,b);
   break;
   
   case 12:
   led(40,r,v,b);
   led(41,r,v,b);
   led(42,r,v,b);
   led(43,r,v,b);
   break;
   
       case 13:
     led(53,r,v,b);
     led(54,r,v,b);
     led(55,r,v,b);   
     break;
      
     case 14:
     led(57,r,v,b);
     led(58,r,v,b);
     led(59,r,v,b);
     break;
     
   case 15:  
   led(17,r,v,b);
   led(18,r,v,b);
   led(19,r,v,b);
   led(20,r,v,b);
   led(21,r,v,b);
   break;
   
   case 16:
   led(34,r,v,b);
   led(35,r,v,b);
   led(36,r,v,b);
   led(37,r,v,b);
   led(38,r,v,b);
   led(39,r,v,b);
   break;
   
   case 17:
   led(49,r,v,b);
   led(50,r,v,b);
   led(51,r,v,b);
   led(52,r,v,b);
   break;
   
   case 18:
   led(31,r,v,b);
   led(32,r,v,b);
   led(33,r,v,b);
   break;
   
   case 19:
   led(23,r,v,b);
   led(24,r,v,b);
   led(25,r,v,b);
   led(26,r,v,b);
   break;
   
   case 20:
   led(45,r,v,b);
   led(46,r,v,b);
   led(47,r,v,b);
   led(48,r,v,b);
   break;
   
   case 21:
   led(8,r,v,b);
   led(9,r,v,b);
   led(10,r,v,b);
   led(11,r,v,b);
   break;
   
   case 22:
   led(42,r,v,b);
   led(43,r,v,b);
   led(44,r,v,b);
   break;
   
   case 23:
   led(27,r,v,b);
   led(28,r,v,b);
   led(29,r,v,b);
   led(30,r,v,b);
   break;
  
  } 
  
  
  
    switch(minutes){
      
      case 1 : //cinq
      for (int i=95; i<=98; i++){
        led(i,r,v,b);
      }
      
      case 2: //dix
      for (int i=75; i<=77; i++){
        led(i,r,v,b);
      }
      
      case 3: // et quart
      led(67,r,v,b);
      led(68,r,v,b);
      for (int i=84; i<=88; i++){
        led(i,r,v,b);
      }
      
      case 4: //vingt
      for (int i=89; i<=93; i++){
        led(i,r,v,b);
      }
      
      case 5: //vingt-cinq
      for (int i=89; i<=98; i++){
        led(i,r,v,b);
      }
      
      case 6: //et demi
      led(67,r,v,b);
      led(68,r,v,b);
      for (int i=80; i<=83; i++){
        led(i,r,v,b);
      }
      
      case 7: //moins vingt-cinq
      for (int i=69; i<=73; i++){
        led(i,r,v,b);
      }
      for (int i=89; i<=98; i++){
        led(i,r,v,b);
      }
      
      case 8://moins vingt
      for (int i=69; i<=73; i++){
        led(i,r,v,b);
      }
      for (int i=89; i<=93; i++){
        led(i,r,v,b);
      }
      
      case 9: //moins le quart
      for (int i=69; i<=73; i++){
        led(i,r,v,b);
      }
      led(78,r,v,b);
      led(79,r,v,b);
      for (int i=84; i<=88; i++){
        led(i,r,v,b);
      }
      
      case 10: //moins dix
      for (int i=69; i<=73; i++){
        led(i,r,v,b);
      }
      led(75,r,v,b);
      led(76,r,v,b);
      led(77,r,v,b);
      
      case 11: //moins cinq
      for (int i=69; i<=73; i++){
        led(i,r,v,b);
      }
      for (int i=95; i<=98; i++){
        led(i,r,v,b);
      }
       
      }
  


/*

Incrémentation des heures minutes.

*/

Tlc.update();
delay(1000);

repetion++;

if (repetion%60==0){ //"Si le reste de la division euclidienne est égal à 0"
minutes++;
}

if (minutes==60){
minutes=0;
heure++;
}

if (heure==24){
heure=0;
minutes=0;
repetion=0;
}



}
