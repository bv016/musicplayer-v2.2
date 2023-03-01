void keyPressedShortcuts() {
  //
  musicShortcuts();
  quitButtons();
  //
}//End keyPressedShortcuts
//
void musicShortcuts() {
  //
  if (key == '1') song0.loop(0);
  if (key == '2') song1.loop(0);
  if (key == '3') song2.loop(0);
  if (key == '4') song3.loop(0);
  if (key == '5') song4.loop(0);
  if (key == '6') song5.loop(0);
  if (key == '7') song6.loop(0);
  if (key == '8') song7.loop(0);
}//end musicShortcuts
//
//End Keyboard Shortcuts
void quitButtons() {
  //Quit button keyboard shortcuts
  if (key == CODED && keyCode == ESC ) {
    quitButtonCode();
  }
}
//
void quitButtonCode() {
  soundEffect0.loop(0);
  delay(1000); //amount of time sound fx plays)
  exit();
}
