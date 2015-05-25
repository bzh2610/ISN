/*

RAINBOW teste le bon fonctinnnement des LEDS sur le circuit

*/

#include "Tlc5940.h"

void led(int number, int r, int v, int b) {

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


int j=0;
int i=33;

void setup()
{
  Tlc.init();
}

void loop()
{

  Tlc.clear();

  if (j == 0) {
    led(1+i,275, 0, 0);
    led(2+i,325, 20, 0);
    led(3+i,325, 50, 0);
    led(4+i,0, 255, 0);
    led(5+i,0, 255, 255);
    led(6+i,150, 0, 150);
    if (i<=55)
      i++;
    else
      j=1;
  }

  else {
    led(1+i, 275, 0, 0);
    led(2+i, 325, 20, 0);
    led(3+i, 325, 50, 0);
    led(4+i, 0, 255, 0);
    led(5+i, 0, 255, 255);
    led(6+i, 150, 0, 150);
    if (i>=1)
      i--;
    else
      j=0;
  }

  Tlc.update();

  delay(100);
}
