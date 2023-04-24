//[ ] merge loop buttons into double function | keep one loop, but add array or counting fuction to determine what to do
//[X] move shuffle to the left of loop
//[ ] add prejudice to shapes
//[ ] add button space
//[ ]
//reminder to invert the left sides

float buttonReferentMeasure;
float buttonSide, spaceX, spaceY, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseX3, pauseY3, pauseWidth;
float playX, playY, playX1, playY1, playX2, playY2, playX3, playY3, loopIX, loopIY;
float stopX, stopY, stopX1, stopY1, stopX2, stopY2, stopX3, stopY3, stopX4, stopY4, stopEX, stopEY, stopEW, stopEH;
float ffX, ffY, rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
float loopPlaylistX, loopPlaylistY, loopWidthDiameter1, loopHeightDiameter1, loopWidthDiameter2, loopHeightDiameter2;
float loopIX1, loopIY1, loopIX2, loopIY2, loopIX3, loopIY3, loopIXA, loopIYA;
float shuffleX, shuffleY, shuffleX1, shuffleX2;//shuffle box
float ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A; //ff ttriangle1
float ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B;//fftriangle2
float rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A;//rewindTRIAGLES1
float rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B;//rewindtriangles2
float nextX1A, nextY1A, nextX2A, nextY2A, nextX3A, nextY3A, nextXA, nextYA, nextWidth; //shapes for next
float prevX1, prevY1, prevX2, prevY2, prevX3, prevY3, prevWidth; //prev song riangle
float siX1, siY1, siX2, siY2, siX3, siY3, siX4, siY4, soX1, soY1, soX2, soY2, soX3, soY3, soX4, soY4; //shuffle line thingys
float stIX1, stIY1, stIX2, stIY2, stIX3, stIY3, stiX1, stiY1, stiX2, stiY2, stiX3, stiY3; //shuffle triangle
//
void setup() {
  //Display
  size(800, 500); //width, height
  //fullScreen(); //displayWidth, displayHeight
  //
  //Population: visual data
  buttonReferentMeasure = width * 1/24;
  buttonSide = buttonReferentMeasure;
  spaceWidth = buttonReferentMeasure * 1/16;
  //
  float centerX = width * 1/2; //Local Variable, garbage collected at end of setup(), see println in draw()
  float centerY = height * 25/32;
  int buttonPositionColumn, buttonPositionRow;
  print("Confirming Center X:", centerX);
  println("\t Confirming Center Y:", centerY); //shpws a character escape
  //
  pauseX1 = centerX - buttonReferentMeasure*1/2;
  pauseY1 = centerY - buttonReferentMeasure*1/2;
  pauseWidth = buttonReferentMeasure * 19683/59049;
  pauseX2 = pauseX1 + 2*pauseWidth;
  pauseY2 = pauseY1;
  playX = pauseX1;
  playY = pauseY1;
  stopX = pauseX1;
  stopY = height * 28/32;
  pauseX3 = pauseX1*6*pauseWidth;
  pauseY3 = pauseY1;
  //
  buttonPositionRow = 1;
  //
  loopIX = pauseX2;
  loopIY = pauseY3 + ( buttonPositionRow * buttonReferentMeasure );
  //
  shuffleX = (pauseX1 - pauseX1*0.0597);
  shuffleY = pauseY3 - ( buttonPositionRow*buttonReferentMeasure*-1 );
  //
  buttonPositionColumn = 1;
  ffX = pauseX1 + buttonPositionColumn*buttonReferentMeasure;
  ffY = pauseY1;
  //
  rrX = pauseX1 - ( buttonPositionColumn*buttonReferentMeasure );
  rrY = pauseY1;
  //
  buttonPositionColumn = 2; //can increment with +=1
  nextX = pauseX1 + ( buttonPositionColumn*buttonReferentMeasure );
  nextY = pauseY1;
  //
  prevX = pauseX1 - ( buttonPositionColumn*buttonReferentMeasure );
  prevY = pauseY1;
  //
  buttonPositionColumn = 3;
  loop1X = loopIX;
  loop1Y = loopIY;
  //
  buttonPositionRow = 2;
  loopPlaylistX = pauseX1;
  loopPlaylistY = pauseY1 + ( buttonPositionRow*buttonReferentMeasure );
  //
  buttonPositionRow = 3;
  stopX = pauseX1;
  stopY = height * 112.5/128;
  //
} //End setup
//
void draw() {
  //
  /*Note: draw the pause button first, in the middle
   All other buttons are drawn around it
   All pseudocode starts like rect( X, Y, Width, Height )
   */
  //
  //Confirming Local Variable Center X & Y garbage collected from setup()
  //print("Confirming Center X:", centerX);
  //print("/t Confirming Center Y:", centerY);
  //println("/t Confirming Button Position Couter:", buttonPosition);
  //
  //Button Space
  rect( spaceX, spaceY, spaceWidth, buttonSide );
  rect( spaceX, spaceY, spaceHeight, buttonSide );
  //
  //Stop Button || middle bottom
  rect( stopX, stopY, buttonSide, buttonSide ); //layout?
  ellipse( stopEX, stopEY, stopEW, stopEH ); //outer circle
  quad( stopX1, stopY1, stopX2, stopY2, stopX3, stopY3, stopX4, stopY4 ); //inner square
  stopEW = buttonSide*11/16;
  stopEH = buttonSide*11/16;
  stopX1 = stopX + buttonSide*2/6; //square
  stopY1 = stopY + buttonSide*2/6;
  stopX2 = stopX + buttonSide*4/6;
  stopY2 = stopY + buttonSide*2/6;
  stopX3 = stopX + buttonSide*4/6;
  stopY3 = stopY + buttonSide*4/6;
  stopX4 = stopX + buttonSide*2/6;
  stopY4 = stopY + buttonSide*4/6;
  stopEX = stopX + buttonReferentMeasure*1/2; //circle
  stopEY = stopY + buttonReferentMeasure*1/2; 
  //
  //Pause Button || center at 25/32 [only correct button]
  rect( pauseX1, pauseY1, buttonSide, buttonSide ); //Layout
  rect( pauseX1, pauseY1, pauseWidth, buttonSide ); //bar 1
  rect( pauseX2, pauseY2, pauseWidth, buttonSide ); //bar 2
  //
  //Play Button || center at 25/32 
  //rect( playX, playY, buttonSide, buttonSide ); //Layout
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  playX1 = pauseX1;
  playY1 = pauseY1;
  playX2 = pauseX1 + buttonReferentMeasure;
  playY2 = pauseY3 + buttonReferentMeasure*1/2;
  playX3 = pauseX1;
  playY3 = pauseY1 + buttonReferentMeasure;
  //
  //
  //Fast Forward in the Song || To the right of center button
  rect( ffX, ffY, buttonSide, buttonSide ); //Layout
  triangle( ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A );
  triangle( ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B );
  ffX1A = ffX;
  ffY1A = pauseY1;
  ffX2A = ffX + buttonReferentMeasure*1/2;
  ffY2A = pauseY3 + buttonReferentMeasure*1/2;
  ffX3A = ffX;
  ffY3A = ffY + buttonReferentMeasure;
  //
  ffX1B = ffX + buttonReferentMeasure*1/2;
  ffY1B = pauseY1;
  ffX2B = ffX + buttonReferentMeasure;
  ffY2B = pauseY3 + buttonReferentMeasure*1/2;
  ffX3B = ffX1B;
  ffY3B = ffY + buttonReferentMeasure;
  //
  //
  //Rewind in the Song || to the left of center button
  rect( rrX, rrY, buttonSide, buttonSide ); //Layout
  triangle( rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A );
  triangle( rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B );
  rrX1A = rrX + buttonReferentMeasure;
  rrY1A = pauseY1;
  rrX2A = rrX + buttonReferentMeasure*1/2;
  rrY2A = pauseY3 + buttonReferentMeasure*1/2;
  rrX3A = rrX + buttonReferentMeasure;
  rrY3A = rrY + buttonReferentMeasure;
  //
  rrX1B = rrX + buttonReferentMeasure*1/2;
  rrY1B = pauseY1;
  rrX2B = rrX;
  rrY2B = rrY2A;
  rrX3B = rrX + buttonReferentMeasure*1/2;
  rrY3B = ffY3A;
  //
  //
  //Next Button, skip file || to the right of ff within song
  rect( nextX, nextY, buttonSide, buttonSide ); //Layout
  triangle( nextX1A, nextY1A, nextX2A, nextY2A, nextX3A, nextY3A );
  rect( nextXA, nextYA, nextWidth, buttonSide );
  nextX1A = nextX;
  nextY1A = pauseY1;
  nextX2A = nextX + buttonReferentMeasure*2/3;
  nextY2A = pauseY3 + buttonReferentMeasure*1/2;
  nextX3A = nextX;
  nextY3A = nextY + buttonReferentMeasure;
  nextXA = nextX2A;
  nextYA = pauseY1;
  nextWidth = buttonReferentMeasure*1/3;
  //
  //Previous Button || to the left of rewind
  rect( prevX, prevY, buttonSide, buttonSide ); //Layout
  triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  rect( prevX, prevY, prevWidth, buttonSide );
  prevX1 = prevX + buttonReferentMeasure;
  prevY1 = pauseY1;
  prevX2 = prevX + buttonReferentMeasure*1/3;
  prevY2 = pauseY3 + buttonReferentMeasure*1/2;
  prevX3 = prevX1;
  prevY3 = prevY + buttonReferentMeasure;
  prevWidth = buttonReferentMeasure*1/3;
  //
  //Loop songs | offest middle right
  rect( loopIX, loopIY, buttonSide, buttonSide ); //Layout
  ellipse( loopPlaylistX, loopPlaylistY, loopWidthDiameter1, loopHeightDiameter1 );
  ellipse( loopIXA, loopIYA, loopWidthDiameter2, loopHeightDiameter2 );
  triangle( loopIX1, loopIY1, loopIX2, loopIY2, loopIX3, loopIY3 );
  //
  loopPlaylistX = loopIX + buttonReferentMeasure*1/2;
  loopPlaylistY = loopIY + buttonReferentMeasure*1/2;
  loopWidthDiameter1 = buttonReferentMeasure*11/16;
  loopHeightDiameter1 = buttonReferentMeasure*11/16;
  loopIX1 = loopPlaylistX + buttonReferentMeasure*1/16;
  loopIY1 = loopIY + buttonReferentMeasure*10/16;
  loopIX2 = loopIX + buttonReferentMeasure;
  loopIY2 = loopIY + buttonReferentMeasure*10/16;
  loopIX3 = loopPlaylistX + buttonReferentMeasure*1.1/4;
  loopIY3 = loopIY + buttonReferentMeasure*1.27/4;
  loopIXA = loopIX + buttonReferentMeasure*1/2;
  loopIYA = loopIY + buttonReferentMeasure*1/2;
  loopHeightDiameter2 = buttonReferentMeasure*8/16;
  loopWidthDiameter2 = buttonReferentMeasure*8/16;
  //
  //
  //Shuffle //left r2
  rect( shuffleX, shuffleY, buttonSide, buttonSide ); //Layout
  rect( soX1, soY1, soX2, soY2, soX3, soY3, soX4, soY4 ); //outer
  rect( siX1, siY1, siX2, siY2, siX3, siY3, siX4, siY4 ); //inner
  triangle( stIX1, stIY1, stIX2, stIY2, stIX3, stIY3 );// bottom triangle
  triangle(stiX1, stiY1, stiX2, stiY2, stiX3, stiY3); //top triangle
  siX1 = shuffleX + buttonReferentMeasure*1/4; //outer
  siY1 = shuffleY + buttonReferentMeasure*3/8;
  siX2 = buttonReferentMeasure*2/4;
  siY2 = buttonReferentMeasure*2/8;
  siX3 = shuffleX + buttonReferentMeasure*1/2; //height
  siY3 = shuffleY + buttonReferentMeasure*1/2;
  siX4 = shuffleX + buttonReferentMeasure*1/2; //width
  siY4 = shuffleY + buttonReferentMeasure*1/2;
  //
  soX1 = shuffleX + buttonReferentMeasure*1/4; //inner
  soY1 = shuffleY + buttonReferentMeasure*3/8;
  soX2 = buttonReferentMeasure*2/4;
  soY2 = buttonReferentMeasure*2/8;
  soX3 = shuffleX + buttonReferentMeasure*1/2; //height
  soY3 = shuffleY + buttonReferentMeasure*1/2;
  soX4 = shuffleX + buttonReferentMeasure*1/2; //width
  soY4 = shuffleY + buttonReferentMeasure*1/2;
  //
  stIX1 = shuffleX + buttonReferentMeasure*3/8; //bottom triangle, top point
  stIY1 = siY4 + buttonReferentMeasure*1/4;
  stIX2 = shuffleX + buttonReferentMeasure*3/8;
  stIY2 = shuffleY + buttonReferentMeasure*1/2;
  stIX3 = shuffleX + buttonReferentMeasure*1.1/8;
  stIY3 = loopIY1;
  //
  stiX1 = shuffleX + buttonReferentMeasure*5/8; //top point and triangle
  stiY1 = shuffleY + buttonReferentMeasure*1/4;
  stiX2 = shuffleX + buttonReferentMeasure*6.9/8;
  stiY2 = siY1;
  stiX3 = shuffleX + buttonReferentMeasure*5/8;
  stiY3 = siY1 + buttonReferentMeasure*1/8;
  //
  //2-D Shapes
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
