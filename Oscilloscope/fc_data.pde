

void setDataForChart1Demo () {
  float[] demoDataX = {1900, 1910, 1920, 1930, 1940, 1950, 1960, 1970, 1980, 1990, 2000}  ;
  
  float[] demoDataY = { 6322,  6489,  2000+i, 7657, 9649, 9767, 12167, 15154, 18200, 23124, 28645};
  
  chart1.setData(demoDataX, demoDataY) ;
}

void getDataForChart1Virtual() {
  while(!((getDataVirtualCurrent(count) < 0.0001) && (getDataVirtualCurrent(count) > -0.0001) && (getDataVirtualPrevious(count) < getDataVirtualCurrent(count)))) { //this is the trigger
    DataXVirtual[count] = count;
    DataYVirtual[count] = getDataVirtualCurrent(count);
    count = count + 1;
  }
  
  count = 0;
  chart1.setData(DataXVirtual, DataYVirtual) ;
  
  if (virtualScaleFactor < 0.5) virtualScaleFactorIncreasing = true;
  if (virtualScaleFactor > 2) virtualScaleFactorIncreasing = false;
  if(virtualScaleFactorIncreasing) virtualScaleFactor = virtualScaleFactor + 0.05;
  else virtualScaleFactor = virtualScaleFactor - 0.05;
  i++;
  
}



float getDataVirtualCurrent(int count) {
  return virtualScaleFactor*(sin(2*PI*count/360));
}

float getDataVirtualPrevious(int count) {
  if (count == 0) {
    return 0;
  }
  else return sin(2*PI*(count-1)/360);
}

float getTimeVirtual(int count) {
  return count;
}

