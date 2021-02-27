#include <LiquidCrystal.h>
int matlabData;
LiquidCrystal lcd(12,11,5,4,3,2);
//LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

void setup() {
  lcd.begin(16,2);
  Serial.begin(9600);
}

void loop() {
  if(Serial.available()>0) {
    matlabData=Serial.read();
    lcd.print(matlabData);
  }
}
