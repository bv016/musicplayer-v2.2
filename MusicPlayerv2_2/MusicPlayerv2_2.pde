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
}// End setup
//
void draw() {
  if ( activateWindow == true) background(0);
} //End Draw
//
void keyPressed() {
  //
  soundEffect0.play();
  soundEffect0.rewind();
  delay(1000);//name time when sound stops
  println("KeyPressed:". soundEffect0.length(1000) );
  println("When does the sound stop? Indicates delay");
  keyPressedShortcuts();
  if (key =='q') exit();
  if (key == CODED && key==ESC) exit(); soundEffect0.play();
  println (soundEffect0.position(), soundEffect0.length() );
} //End keypPressed
//
void mousePressed() {
  soundEffect1.rewind();
  if ( activateWindow==false ) activateWindow = true;
} //End mousePressed
//
//End MAIN Program
