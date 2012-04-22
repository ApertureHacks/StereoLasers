int motor1 = 3, motor2 = 5;
long previousMillis = 0, interval = 15000;
void setup(){
  pinMode(motor1, OUTPUT);
  pinMode(motor2, OUTPUT);
  Serial.begin(9600);
  randomSeed(A2);
  analogWrite(motor1, random(90, 120));
}

void loop(){
  unsigned long currentMillis = millis();
  if(currentMillis - previousMillis > interval){
    analogWrite(motor1, random(90, 120));
    previousMillis=currentMillis;
  }
  int level = analogRead(A5);
  if(level > 255)level=255;
  if(level > 3){
    level = map(level, 0, 255, 90, 255);
  }
  analogWrite(motor2, level);
  Serial.println(level);
}
