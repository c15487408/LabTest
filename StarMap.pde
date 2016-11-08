ArrayList<Star> stars = new ArrayList<Star>(); //Q3
void setup()
{
  size(800,800);
  loadData();
}
  
  
  
  //Q4
  void loadData()
{
  String[] lines = loadStrings("gdp.csv");
  for(String line: lines)
  {
    Star star = new Star(line);
    stars.add(star);
  }

}