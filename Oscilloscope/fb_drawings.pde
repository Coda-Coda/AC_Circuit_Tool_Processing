


void clearCharts() { //Clears all the charts before writing next set of data
  background(255);
}


void drawChart1() { //Draws chart1, with axes and titles
  textSize(9);                
  chart1.draw(15,15,width-30,height-30);
  // Draw a title over the top of the chart.
  fill(120);
  textSize(20);
  text("Oscilloscope 1", 70,30);
  textSize(11);
  text("Voltage across the wires labelled #1", 70,45);
}
