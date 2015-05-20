#include <SoftwareSerial.h>// import the serial library

SoftwareSerial Communication(5, 6); // RX, TX
int ledpin=13; // led on D13 will show blink on / off
int BluetoothData; // the data given from Computer

void setup() {
  // put your setup code here, to run once:
  Serial.begin(4800);
  Communication.begin(9600);
  Serial.println("Bluetooth active envoyez 1 ou 0 pour controller la led..");
  pinMode(ledpin,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
   if (Communication.available()){
BluetoothData=atoi(Communication.read());

   if(BluetoothData==1){   // if number 1 pressed ....
   digitalWrite(ledpin,1);
   Serial.println("LED allumee ! ");
   }
  if (BluetoothData==0){// if number 0 pressed ....
  digitalWrite(ledpin,0);
   Serial.println("LED  eteinte ");
  }
  
}
delay(100);// prepare for next data ...
}

