void delay(int millis) {
  int initTime = millis();
  while(millis()-initTime<millis);
}


