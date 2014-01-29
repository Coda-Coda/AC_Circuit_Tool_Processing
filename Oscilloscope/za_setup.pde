void setup()
{
  size(1600,800);
  smooth();
  //noLoop();
  
  PFont font = createFont("Helvetica",11);
  textFont(font,10);

  // Both x and y data set here.  
  chart1  = new XYChart(this);
  
  // Axis formatting and labels.
  chart1.showXAxis(true); 
  chart1.showYAxis(true); 
    
  chart1.setYFormat("#####"); //TODO fiddle with this format later
  chart1.setXFormat("#####"); //TODO fiddle with this format later
  
  chart1.setMaxY(2.5);
  chart1.setMinY(-2.5);
  
  
  
  // Symbol colours
  chart1.setPointColour(color(180,50,50,100)); //TODO change this colour when multiple charts are added
  chart1.setPointSize(5);
  chart1.setLineWidth(2);
  
  
}
