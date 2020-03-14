/// Input Start Year Here (Between 2020 and 2100) ///
int Year = 2020;


Database database = new Database();

int Xposition, Yposition, TextSize, ColumnSpacing, RowSpacing;
int imageCounter, nLYear, nYear, YEAR;
boolean LeapYear;

void setup() {
  size(1920, 1080);
  //fullScreen();
  frameRate(60);
  background(0);
  Xposition = 20; 
  Yposition = 300; 
  TextSize = 20; 
  ColumnSpacing = 40;
  RowSpacing = 40; 
}

void draw() {
  background(0);

  if (Year > 2100) 
    Year = 2100;

  if (Year < 2020) 
    Year = 2020;

  YEAR = constrain(Year, 2020, 2100);
  nYear = YEAR - 2020;
  nLYear = (YEAR-2000)/4;


  int isItLeapYear = (YEAR-2000-1)/4;
  if (nLYear > isItLeapYear && YEAR != 2100)
    LeapYear = true;
  else
    LeapYear = !true; 


  Year year = new Year();
  year.plot(Xposition, Yposition, ColumnSpacing, RowSpacing, TextSize);  


  textSize(TextSize);
  textAlign(LEFT);
  fill(255, 50, 50);
  text("Days In Work", 120, 100 + TextSize);
  fill(50, 255, 255);
  text("Days Off", 120, 100);

  textSize(100);
  fill(230);
  textAlign(CENTER);
  text(YEAR, width/2, 130);
}

void keyPressed() {
  if (keyCode == ' ') {
    save(YEAR + "Calendar.png");
  }

  if (keyCode == LEFT) {
    Year--;
  }

  if (keyCode == RIGHT) {
    Year++;
  }
}
