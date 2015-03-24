#include "Tlc5940.h"

void led(int number, int r, int v, int b){
    
    Tlc.set(number*3-3, b);
    Tlc.set(number*3-2, v);
    Tlc.set(number*3-1, r);
}


  int j=255;
  int k=1;
  
void setup()
{ 
  Tlc.init();  
}

void loop()
{
    
    Tlc.clear();

  for(int i=0; i<128; i=i+5){
  led(1+i, 255,0,0);
  led(2+i, 200,70,0);
  led(3+i, 255, 200,0);
  led(4+i, 0,255,0);  
  led(5+i, 0,255,255);   
  }
  
  Tlc.update(); 
  delay(100); 
}

