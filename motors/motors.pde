int motor1 = 3, motor2 = 5;
int oldRand;
long previousMillis = 0, interval = 15000;
void setup(){
  pinMode(motor1, OUTPUT);
  pinMode(motor2, OUTPUT);
  Serial.begin(9600);
  randomSeed(A2);
  oldRand = random(50, 120);
  analogWrite(motor1, oldRand);
}

void loop(){
  unsigned long currentMillis = millis();
  if(currentMillis - previousMillis > interval){
    int newRand = random(50, 120);
    while(abs(newRand-oldRand)<11){
      newRand = random(50, 120);
    }
    analogWrite(motor1, newRand);
    oldRand=newRand;
    previousMillis=currentMillis;
  }
  int level = analogRead(A5);
  if(level > 255)level=255;
  if(level > 3){
    level = map(level, 0, 255, 75, 255);
  }
  analogWrite(motor2, level);
  Serial.println(level);
}
