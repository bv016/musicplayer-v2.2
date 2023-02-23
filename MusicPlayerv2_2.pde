import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
AudioPlayer song0, song1, song2, song3, song4, song5, song6, song7;
AudioPlayer soundEffect0, soundEffect1;
//
Boolean activateWindow=false;
//
void setup() {
  size(300, 300);
  loadMusic();
  song0.loop(0);
  //soundEffect0.loop(0);
}//End Setup
//
void keyPressed() {
  //
  soundEffect0.play();
  soundEffect0.rewind();
  delay();//name the time when sound stops
  println("keyPressed:". soundEffect0.length() );
  println("When does the sound stop? Indicates delay");
  keyPressedShortcuts();
  if (key == "")exit();
  if (key == CODED && key==ESC) exit(); soundEffect0.play();
  println (soundEffect0.position(), soundEffect0.length() );
}//end KeyPressed
//
void mousePressed() {
  soundEffect1.rewind();
  if ( activateWindow==false ) activateWindow = true;
}//end MousePressed
//
//End MAIN PROGRAM 
