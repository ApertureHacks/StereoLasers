//declare global variables here
int brightness=0;
int voltage=0;
int pin=0;

//declare pins
void setup() {
  for(int i=1; i<14; i++) {
    pinMode(i, OUTPUT);
  }
}

void loop() {
  voltage=analogRead(0);
  pin=voltage/10;
  if(pin<2 && pin>0) pin=1;
  else if(pin<4) pin=2;
  else if(pin<6) pin=3;
  else if(pin<8) pin=4;
  else pin=5;
  brightness=pin*40;
  for(int i=1; i<14) i++) {
    analogWrite(factor, brightness);
  }
}
  
  
