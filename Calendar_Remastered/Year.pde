class Year {
  ArrayList <Month> months;
  int[][] data = new int[12][2];
  String[] name = new String[12];
  int day;

  Year() {  
    months = new ArrayList<Month>(12);  

    day = 0;

    name[0] = "January";    
    data[0][0] = 31;
    name[1] = "February";
    
    if (LeapYear)
      data[1][0] = 29;
    else 
    data[1][0] = 28;
    
    name[2] = "March";
    data[2][0] = 31;
    name[3] = "April";
    data[3][0] = 30;
    name[4] = "May";
    data[4][0] = 31;
    name[5] = "June";
    data[5][0] = 30;
    name[6] = "July";
    data[6][0] = 31;
    name[7] = "August";
    data[7][0] = 31;
    name[8] = "September";
    data[8][0] = 30;
    name[9] = "October";
    data[9][0] = 31;
    name[10] = "November";
    data[10][0] = 30;
    name[11] = "December";
    data[11][0] = 31;
  }

  void plot(int XPOS, int YPOS, int COLSPACE, int ROWSPACE, int TEXTSIZE) {
    for (int i = 0; i < 12; i++) {
      int x, y, xs;
      xs = 310;
      if (i<6) {
        y = 0;
        x = 0;
      } else {
        y = 400;
        x = -6 * xs;
      }

      months.add(new Month(data[i][0], (365 * nYear) + (nLYear - 5) + day, XPOS + (x + (i * xs)), YPOS + y, name[i], COLSPACE, ROWSPACE, TEXTSIZE));

      day += data[i][0];
    }

    for (int i = 0; i < months.size(); i++) {
      Month month = months.get(i);
      month.display();
    }
  }
}
