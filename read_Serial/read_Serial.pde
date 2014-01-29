// Example by Tom Igoe

import processing.serial.*;

int lineFeed = 10;    // Line Feed in ASCII
String inputString = null;
Serial arduino;  // The serial port

void setup() { 
  // List all available serial ports
  println(Serial.list());
  // Opens default port using baud rate of 115200
  //TODO (should be researched and possibly changed later)
  //TODO allow choosing of com port
  arduino = new Serial(this, Serial.list()[0], 115200);
  arduino.clear();
  
  //Ignore first reading, in case reading was started halfway through
  //TODO check if this is necessary before each reading or before each set of readings
  inputString = arduino.readStringUntil(lineFeed);
  inputString = null;
}

void draw() {
  while (arduino.available() > 0) {
    inputString = arduino.readStringUntil(lineFeed);
    if (inputString != null) {
      println(inputString);
    }
  }
}

