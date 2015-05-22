/*
Code de la binary clock
*/

#include "Tlc5940.h"
int heure=23;
int minutes=59;
int repetition=0;
int r=0;
int v=0;
int b=4000;

int min_tt=heure*60+minutes;

void led(int number, int r, int v, int b){
  
    if(number<22){
    Tlc.set(number*3-3+16, r*2);
    Tlc.set(number*3-2+16, v*2);
    Tlc.set(number*3-1+16, b*2);
    }
    
    else{
    Tlc.set(number*3-2+16, r*2);
    Tlc.set(number*3-1+16, v*2);
    Tlc.set(number*3-0+16, b*2);
    }
}

  
void setup()
{ 
  Tlc.init(); 
  min_tt=heure*60+minutes;
  Serial.begin(9600);
}

void loop()
{ 
 
  Tlc.clear();
  
   heure=min_tt/60;
  minutes=min_tt-(heure*60);
  Serial.print(minutes);
  
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

delay(1000);

repetition++;

if (repetition%60==0){ //"Si le reste de la division euclidienne est égal à 0"
minutes++;
}

if (minutes==60){
minutes=0;
heure++;
}

if (heure==24){
heure=0;
minutes=0;
repetition=0;
}
}
