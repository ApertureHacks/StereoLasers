int motor1 = 3, motor2 = 5, upDown = 55, delta = 10, interval = 500;
long previousMillis = 0;
void setup(){
  pinMode(motor1, OUTPUT);
  pinMode(motor2, OUTPUT);
  Serial.begin(9600);
  analogWrite(motor1, 75);
}

void loop(){
  unsigned long currentMillis = millis();
  if(upDown > 100)delta=-10;
  if(upDown < 55)delta=10;
  int level = analogRead(A5);
  if(level>255)level=255;
  if(!level==0){
    analogWrite(motor2, level);
  } 
  currentMillis = millis();
  if(currentMillis-previousMillis>interval){
    upDown += delta;
    previousMillis=currentMillis;
    analogWrite(motor1, upDown);
  }
  Serial.println(level);
}
