int motor1 = 9, motor2 = 10;

void setup(){
  pinMode(motor1, OUTPUT);
  pinMode(motor2, OUTPUT);
  Serial.begin(9600);
}

void loop(){
  int level = analogRead(A5);
  if(level>255)level=255;
  analogWrite(motor1, level);
  Serial.println(level);
}
