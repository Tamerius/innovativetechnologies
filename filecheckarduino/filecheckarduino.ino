void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(12, OUTPUT);
}



void loop() {
  // put your main code here, to run repeatedly:
  byte byteRead;

 /* check if data has been sent from the computer: */
 if (Serial.available()) {
   /* read the most recent byte */
   byteRead = Serial.read();
   //You have to subtract '0' from the read Byte to convert from text to a number.
   byteRead=byteRead-'0';
   
   //Turn off all LEDs if the byte Read = 0
   if(byteRead == 0){
     digitalWrite(12, HIGH);
   }
   else {
    digitalWrite(12, LOW);
   }
  }
}
