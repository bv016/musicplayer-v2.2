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
  //
  if (key == 'P' || key == 'p'); autoPlay(); //when song ends, there is no need to click on new one
  if (key == 'G' || key == 'g'); playPause(); //pause and play
  if (key == 'F' || key == 'f'); songBeginning(); //rewind to beginning
  if (key == 'D' || key == 'd'); prevSong(); //play previous song
  if (key == 'H' || key == 'h'); ff(); //fast forward in song
  if (key == 'J' || key == 'j'); songSkip(); //skips to next song
  if (key == 'K' || key == 'k'); loopSong(); //loops songs, and plaaylist in same button
  if (key == 'D' || key == 'd'); shuffleO(); //letter o, not 0
  if (key == 'S' || key == 's'); stopSong(); //stops song
  
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
  delay(1000); //amount of time sound fx plays;
  exit();
}

void autoPlay() {}
//
void playPause() {}
//
void songBeginning() {}
//
void prevSong() {}
//
void ff() {}
//
void songSkip() {}
//
void loopSong() {}
//
void shuffleO() {}
//
void stopSong() {}
