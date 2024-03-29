/* [X] get soundEffectPathway to work and songs to get used
   [ ] fix null value 8[] when 1 or 8 are used
   [X] stop amalgamation of songs from forming
   [ ] get next and prev song to stop current song and play
   [ ] get pause to continiue off of the same song
   [ ] make the buttons do their fudfjkghd job
   [Q] get esc to quit and not nullpointerexception 
   note: all keys think they are all the same
*/
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
//pre-array: AudioPlayer song0, song1, song2, song3, song4, song5, song6, song7;
int numberOfSongs = 8;
AudioPlayer[] songs = new AudioPlayer[numberOfSongs]; //playlist data structure
//pre-array: AudioPlayer sfx[0], soundEffect1;
int numberOfSFX = 2;
AudioPlayer[] sfx = new AudioPlayer[numberOfSFX];
int currentSong = int ( random( numberOfSongs-1 ) ); //shuffle || random same thign[gjdgfhjsdgf
//
Boolean activateWindow=false, autoPlayOn=false;
//
/*if ( autoplayOn==false ) {
 autoPlayOn==true;
 } else {
 autoPlayOn==false;
 }*/
//
//
void setup() {
  size(800, 500);
  loadMusic();
  /*if ( songs[currentSong].length >= 98/100);
   currentSong++;*/
  //song0.loop(0);
  //sfx[0].loop(0);
}// End setup
//
void draw() {
  if ( activateWindow == true) background(0);
  println(autoPlayOn, songs[currentSong].isPlaying(), currentSong, songs[currentSong].position(), songs[currentSong].length() );
  //
  if ( autoPlayOn==true ) autoPlayMusic();
  else if ( autoPlayOn==true ) currentSong = int ( random( numberOfSongs-1 ) );
} //End Draw
//
void keyPressed() {
  //
  sfx[1].loop();
  sfx[1].rewind();
  delay(1000);//name time when sound stops
  println("KeyPressed:", sfx[1].length() );
  println("When does the sound stop? Indicates delay");
  keyPressedShortcuts();
} //End keypPressed
//
void mousePressed() {
  //soundEffect1.rewind();
  if ( activateWindow==false ) activateWindow = true;
} //End mousePressed
//
//End MAIN Program
