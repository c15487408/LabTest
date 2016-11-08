class Star
{
  int hab;
  String name;
  float distance;
  float Xg;
  float Yg;
  float Zg;
  float AbsMag;
   
  Star(String line)
  {
    String[] field = line.split("\t");
    hab = Integer.parseInt(field[2]);
    name = field[3];
    distance = Float.parseFloat(field[12]);
    Xg = Float.parseFloat(field[13]);
    Yg = Float.parseFloat(field[14]);
    Zg = Float.parseFloat(field[15]);
    AbsMag = Float.parseFloat(field[16]);

  }
  
    Star(TableRow row)
  {
    hab = row.getInt(2);
    name = row.getString(3);
    distance = row.getFloat(12);
    Xg = row.getFloat(13);   
    Yg = row.getFloat(14);   
    Zg= row.getFloat(15);   
    AbsMag = row.getFloat(16);   
  }
}