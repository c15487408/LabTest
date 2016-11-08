/*
Reyan Jaimon
C15487408
Lab Group B
DT228/2
*/


//Q1
class Star
{
  String hab;
  String name;
  float distance;
  float Xg;
  float Yg;
  float Zg;
  float AbsMag;
   
  Star(String line)
  {
    String[] field = line.split(",");
    hab = field[2];
    name = field[3];
    distance = Float.parseFloat(field[12]);
    Xg = Float.parseFloat(field[13]);
    Yg = Float.parseFloat(field[14]);
    Zg = Float.parseFloat(field[15]);
    AbsMag = Float.parseFloat(field[16]);

  }
  //Q2
    Star(TableRow tablerow)
  {
    hab = tablerow.getString(2);
    name = tablerow.getString(3);
    distance = tablerow.getFloat(12);
    Xg = tablerow.getFloat(13);   
    Yg = tablerow.getFloat(14);   
    Zg= tablerow.getFloat(15);   
    AbsMag = tablerow.getFloat(16);   
  }
}