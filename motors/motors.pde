int motor1 = 3, motor2 = 5;

void setup(){
  pinMode(motor1, OUTPUT);
  pinMode(motor2, OUTPUT);
  Serial.begin(9600);
  analogWrite(motor1, 150);
}

void loop(){
  int level = analogRead(A5);
  if(level>255)level=255;
  if(!level==0){
    analogWrite(motor2, level);
  } 
  Serial.println(level);
}
