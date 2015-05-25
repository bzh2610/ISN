/*
Code de la binary clock
*/

#include "Tlc5940.h"
long heure=23;
long minutes=59;
long seconds=59;

int r=0;
int v=0;
int b=4000;

long sec_tt=0;


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
  sec_tt=(heure*3600)+(minutes*60)+seconds;
  Serial.begin(9600);
}


void loop()
{ 
  
if(sec_tt==86400){
sec_tt=0;
heure=0;
}


  Tlc.clear();
Serial.print("\n Secondes totales :");
Serial.print(sec_tt);



  heure=sec_tt/3600;
  minutes=(sec_tt-(heure*3600))/60;
  seconds=sec_tt-(heure*3600+minutes*60);

Serial.print(" <==> ");
Serial.print(heure);
Serial.print("h");
Serial.print(minutes);
Serial.print("m");
Serial.print(seconds);
Serial.print("s");
  
  
    if(seconds-32>=0){
    seconds=seconds-32;
    led(28, r,v,b);
  }

 if(seconds-16>=0){
    seconds=seconds-16;
led(27, r,v,b);
  }
  
    if(seconds-8>=0){
    seconds=seconds-8;
led(26, r,v,b);
  }
  
    if(seconds-4>=0){
    seconds=seconds-4;
led(25, r,v,b);
  }
    if(seconds-2>=0){
    seconds=seconds-2;
led(24, r,v,b);
  }
    if(seconds-1>=0){
    seconds=seconds-1;
    led(23, r,v,b);
  }
  
  
  
  
  
  if(minutes-32>=0){
    minutes=minutes-32;
    led(17, r,v,b);
  }

 if(minutes-16>=0){
    minutes=minutes-16;
led(16, r,v,b);
  }
  
    if(minutes-8>=0){
    minutes=minutes-8;
led(15, r,v,b);
  }
  
    if(minutes-4>=0){
    minutes=minutes-4;
led(14, r,v,b);
  }
    if(minutes-2>=0){
    minutes=minutes-2;
led(13, r,v,b);
  }
    if(minutes-1>=0){
    minutes=minutes-1;
    led(12, r,v,b);
  }
  
  
  
 
  
  if(heure-16>=0){
    heure=heure-16;
    led(5, r,v,b);
  }
  
    if(heure-8>=0){
    heure=heure-8;
    led(4, r,v,b);
  }
  
    if(heure-4>=0){
    heure=heure-4;
    led(3, r,v,b);
  }
    if(heure-2>=0){
    heure=heure-2;
    led(2, r,v,b);
  }
    if(heure-1>=0){
    heure=heure-1;
    led(1, r,v,b);
  }

  Tlc.update();

sec_tt++;



delay(1000);
}
