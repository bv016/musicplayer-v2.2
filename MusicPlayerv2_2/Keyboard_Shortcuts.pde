void keyPressedShortcuts() {
  //
  musicShortcuts();
  quitButtons();
  //
  if (key == 'P' || key == 'p');
  autoPlay(); //when song ends, there is no need to click on new one ^
  if (key == 'G' || key == 'g');
  playPause(); //pause and play ^
  if (key == 'F' || key == 'f');
  rewind(); //rewind to beginning ^
  if (key == 'D' || key == 'd');
  prevSong(); //play previous song ^
  if (key == 'H' || key == 'h');
  ff(); //fast forward in song ^
  if (key == 'J' || key == 'j');
  nextSong(); //skips to next song ^
  if (key == 'K' || key == 'k');
  loopSong(); //loops songs, and playlist in same button ^
  if (key == 'D' || key == 'd');
  shuffleO(); //letter o, not 0 ^ 
  if (key == 'S' || key == 's');
  stopSong(); //stops song ^ 
  /*if (key == 'R' || key 'r');
   randomCurrentSong(); //gamble on your next song
   */
}//End keyPressedShortcuts
//
void musicShortcuts() {
  //
  if (key == '1') songs[0].loop(0); // full of you
  if (key == '2') songs[1].loop(0); // omoikiri
  if (key == '3') songs[2].loop(0); // (d)halfmoon
  if (key == '4') songs[3].loop(0); // steal this night
  if (key == '5') songs[4].loop(0); // pathetic
  if (key == '6') songs[5].loop(0); // last train
  if (key == '7') songs[6].loop(0); // clouds
  if (key == '8') songs[7].loop(0); // like you
  //
}//end musicShortcuts
//
void quitButtons() {
  //Quit button keyboard shortcuts
  if (key == CODED && keyCode == ESC) {
    quitButtonCode();
    exit();
  }
}//end keyboard shortcuts
//
void quitButtonCode() {
  sfx[0].loop(0);
  delay(500); // amount of time sound fx plays in ms;
  exit();
}

void autoPlay() {
  if ( autoPlayOn==false ) {
    autoPlayOn=true;
  } else {
    autoPlayOn=false;
    songs[currentSong].pause();
  }
}
//end autoplay
//
void autoPlayMusic() {
  //Error: ArrayListOutOfBounds
  if ( songs[currentSong].isPlaying()==false ) {
    currentSong++;
    songs[currentSong].play();
  }
}//end autoPlayMusic
//
//
void playPause() 
{
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*98/100 ) {
    songs[currentSong].rewind();
    songs[currentSong].play();
    //autoplay>
  } else {
    //autoPlay(), is better here
    songs[currentSong].pause();
    songs[currentSong].loop();
  }
}
//
void rewind() { //d
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(-5000);
  else if (currentSong >= songs.length-1  /* || currentSong >= songs.length+1 */ ) {
    currentSong = 0;
  } else {
    songs[currentSong].rewind();
    songs[currentSong].loop();
  }
}
void ff() { //fast forward
  if (songs[currentSong].isPlaying() ) songs[currentSong].skip(5000);
  else if (currentSong >= songs.length-1 /* || currentSong >= songs.length+1 */ ) {
    currentSong = 0;
  } else {
    songs[currentSong].skip(5000);
    songs[currentSong].loop();
  }
}
//
//
void prevSong() {
  //ERROR: ArrayListOutOfBounds
  //ERROR: currentSong--; plays two songs or more at once
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
    currentSong--;
    delay(999);
  } else if (currentSong >= songs.length-1 /* || currentSong >= songs.length+1 */ ) {
    currentSong = 0;
  } else {
    songs[currentSong].pause();
    songs[currentSong].rewind();
    currentSong--;
  }
}//End prevSong
//
//
void nextSong() {
  //ERROR: ArrayListOutOfBounds
  //ERROR: currentSong++; plays two songs or more at once
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
    currentSong++;
    delay(999);
  } else if (currentSong >= songs.length-1 /* || currentSong >= songs.length+1 */ ) { //THIS LINE AND THE NEXT IS THE ALGORITHM
    currentSong = 0;
  } else {
    songs[currentSong].pause();
    songs[currentSong].rewind();
    currentSong++;
  }
}//End Next Song
//
void loopSong() {
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else if (currentSong >= songs.length-1 /* || currentSong >= songs.length+1 */ ) { //THIS LINE AND THE NEXT IS THE ALGORITHM
    currentSong = 0;
  } else {
    songs[currentSong].rewind();
  }
}//End Next Song
//
void shuffleO() { //letter O, not a zero
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
    randomCurrentSong(); //See VOID Below
    songs[currentSong].play();
  } else {
    songs[currentSong].rewind();
    currentSong = int ( random( numberOfSongs-1 ) ); //Starts playlist from random song
    songs[currentSong].play();
  }
} //End Shuffle Playlist
//
void randomCurrentSong() {
  currentSong = int ( random( numberOfSongs-1 ) ); //Starts playlist from random song
} //End Random Current Song
void stopSong()
{
  //Based on a question: is the song playing
  //Note: STOP is actually a fancy rewind, no ERRORS
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].rewind();
  }
}//End Stop Song
