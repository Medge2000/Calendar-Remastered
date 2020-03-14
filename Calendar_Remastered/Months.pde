class Month {
  int s, d, l, x, y, c, r, posX, posY, t, colength;
  String n;

  Month(int nDays, int startDay, int px, int py, String name, int columnSize, int rowSize, int textSize) {
    d = nDays;
    s = startDay;

    l = 0;
    x = database.data[s][2];
    y = 0;

    c = columnSize;
    r = rowSize;

    t = textSize;

    posX = px;
    posY = py;

    n = name;

    colength = 0;
  }

  void display() {

    for (int i = s; i < s+d; i++) {
      l += 1;


      if (x == 7) 
        x = 0;   


      x += 1;


      if ( 
        database.data[i][1] == 0  ||
        database.data[i][1] == 1  || 
        database.data[i][1] == 5  ||
        database.data[i][1] == 6  ||
        database.data[i][1] == 9  ||
        database.data[i][1] == 10 ||
        database.data[i][1] == 11 ||
        database.data[i][1] == 14 ) 
        fill(50, 255, 255);
      else fill(255, 50, 50);



      textSize(t);
      textAlign(CENTER);
      text(l, posX+(x*c), posY+(y*r));


      if (x == 7) 
        y += 1;
    }
    

    if ( database.data[s+d][2] == 7 ) 
      colength = y;
      else colength = y + 1;


    stroke(230);

    for (float y = 0; y < 3; y++) 
      line(posX + (0.5*r), posY - ((2*c) + (c/1.5)) + (c * y), posX + (8*r) - (0.5*r), posY - ((2*c) + (c/1.5)) + (c * y));

    for (float x = 0.5; x < 8.5; x++) {
      if (x == 0.5 || x == 7.5) 
        line(posX + (x*c), posY - ((2*c) + (c/1.5)), posX + (x*c), (posY - (c/1.5)) + (colength*c));
      else line(posX + (x*c), posY - (c + (c/1.5)), posX + (x*c), (posY - (c/1.5)) + (colength*c));
    }

    textSize(t);
    fill(230);
    textAlign(CENTER);
    text("M", posX+(1*c), posY - ((c/3) + (c/1.5)));
    text("T", posX+(2*c), posY - ((c/3) + (c/1.5)));
    text("W", posX+(3*c), posY - ((c/3) + (c/1.5)));
    text("T", posX+(4*c), posY - ((c/3) + (c/1.5)));
    text("F", posX+(5*c), posY - ((c/3) + (c/1.5)));
    text("S", posX+(6*c), posY - ((c/3) + (c/1.5)));
    text("S", posX+(7*c), posY - ((c/3) + (c/1.5)));
    fill(50, 255, 200);
    text(n, posX+(4*c), posY - ((c/3) + c + (c/1.5)));
  }
}
