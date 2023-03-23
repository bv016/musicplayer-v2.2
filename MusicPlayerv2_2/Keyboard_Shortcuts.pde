void keyPressedShortcuts() {
  //
  musicShortcuts();
  quitButtons();
  //
}//End keyPressedShortcuts
//
void musicShortcuts() {
  //
  if (key == '1') songs[0].loop(0);
  if (key == '2') songs[1].loop(0);
  if (key == '3') songs[2].loop(0);
  if (key == '4') songs[3].loop(0);
  if (key == '5') songs[4].loop(0);
  if (key == '6') songs[5].loop(0);
  if (key == '7') songs[6].loop(0);
  if (key == '8') songs[7].loop(0);
  //
  if (key == 'P' || key == 'p');
  autoPlay(); //when song ends, there is no need to click on new one
  if (key == 'G' || key == 'g');
  playPause(); //pause and play
  if (key == 'F' || key == 'f');
  rewind(); //rewind to beginning
  if (key == 'D' || key == 'd');
  prevSong(); //play previous song
  if (key == 'H' || key == 'h');
  ff(); //fast forward in song
  if (key == 'J' || key == 'j');
  songSkip(); //skips to next song
  if (key == 'K' || key == 'k');
  loopSong(); //loops songs, and playlist in same button
  if (key == 'D' || key == 'd');
  shuffleO(); //letter o, not 0
  if (key == 'S' || key == 's');
  stopSong(); //stops song
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
  sfx[0].loop(0);
  delay(1000); //amount of time sound fx plays;
  exit();
}

void autoPlay() {
  if ( autoPlayOn==false ) {
    autoPlayOn=true;
  } else {
    autoPlayOn=false;
    songs[currentSong].pause();
  }
  //end autoplay
  //
  void autoPlayMusic() {
    //Error: ArrayListOutOfBounds
    if ( songs[currentSong].isPlaying()==false ) {
      currentSong++;
      songs[currentSong].play();
    }
  }//end autooPlayMusic
  //
  //
  void playPause()
  {
    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].pause();
    } else if ( songs[currentSong].position() >= songs[0].length()*9/10 ) {
      //.rewind();
      //.play();
    } else {
    }
  }
  //
  void rewind() {
    if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(-5000);
  }
  //
  void prevSong() {
    //currentSong--;
    //
    void ff() {
      if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(5000);
    }//end ff | fast forward
    //
    void songSkip() {
      //currentSong++;
      if (songs[currentSong].isPlaying() ) {
        //Current Song: .pause(), .rewind()
        //Next song: current song++
        // .play()
      } else if (currentSong >= songs.length-1) ) {
        currentSong = 0;
      } else {
        songs[currentSong].rewind();
        currentSong++;
      }
      //
      void loopSong()
      {
        if ( songs[currentSong].position() >= songs[currentSong].length()*153/157 ) {
        }
      }
      //
      void shuffleO() {
      }
      //
      void stopSong()
      {//stop is a fancy rewind
        if ( songs[currentSong].isPlaying() ) {
          songs[currentSong].pause();
          songs[currentSong].rewind();
        } else {
          songs[currentSong].rewind();
        }
      } //End stopSong
