ArrayList<Star> stars = new ArrayList<Star>(); //Q3

int nbOfHorizontalLines = 16; // For 50 pixels
int nbOfVerticalLines = 16;

void setup()
{
  size(800,800);
  

  loadData();
  printStars();
}
  
  
  
  //Q4
  void loadData()
{
  String[] lines = loadStrings("HabHYG15ly.csv");
  for(String line: lines)
  {
    Star star = new Star(line);
    stars.add(star);
  }

}
//Q5
void  printStars(){
  
  for(int i=0; i<stars.size();i++){
    println(stars.get(i));
  }
}


void draw() {
  background (0);
  stroke(128,0,128);

  float distanceBetweenHorizontalLines = (float)height/nbOfHorizontalLines;
  float distanceBetweenVerticalLines = (float)width/nbOfVerticalLines;

  for(int i = 0; i < nbOfHorizontalLines; i++)
  {
    line(0, i*distanceBetweenHorizontalLines, width, i*distanceBetweenHorizontalLines);

  }

  for(int i = 0; i < nbOfVerticalLines; i++)
  {
    line (i*distanceBetweenVerticalLines,0,i*distanceBetweenVerticalLines, height);
  }
 
}