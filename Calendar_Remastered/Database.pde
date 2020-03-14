class Database {
  int[][] data = new int[30000][3];
  int l, m;

  Database() {

    l = 1;
    m = l;

    for (int i = 0; i < data.length; i++) {
      data[i][0] = i;
    }

    for (int i = 0; i < data.length; i++) {
      if (l == 14) 
        l = 0;


      l += 1;

      if (m == 7) 
        m = 0;


      m += 1;

      data[i][1] = l;
      data[i][2] = m;
    }
  }

  void display() {
    for (int i = 0; i < 365; i++) {
      for (int j = 0; j < 3; j++) {
        fill(0, 255, 255);
        textSize(10);
        text(data[i][j], i*15, 20+(j*30));
      }
    }
  }
}
