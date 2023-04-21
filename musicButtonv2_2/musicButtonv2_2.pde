//[ ] merge loop buttons into double function
//[X] move shuffle to the left of loop
//[ ] add prejudice to shapes
//[ ] add button space

float buttonReferentMeasure;
float buttonSide, spaceX, spaceY, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseX3, pauseY3, pauseWidth;
float playX, playY, playX1, playY1, playX2, playY2, playX3, playY3, stopX, stopY, loopIX, loopIY;
float ffX, ffY, rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
float loopPlaylistX, loopPlaylistY, loopIWidthDiameter, loopIHeightDiameter;
float shuffleX, shuffleY;//shuffle box
float ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A; //ff ttriangle1
float ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B;//fftriangle2
float rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A;//rewindTRIAGLES1
float rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B;//rewindtriangles2
float nextX1A, nextY1A, nextX2A, nextY2A, nextX3A, nextY3A, nextXA, nextYA, nextWidth; //shapes for next
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
  shuffleX = (pauseX1 - pauseX1*0.06);
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
  //Stop Button //far right, find way to move middle bottom
  rect( stopX, stopY, buttonSide, buttonSide ); //layout?
  rect( stopX, stopY, buttonSide, buttonSide ); //square
  //
  //Pause Button //center at 25/32 [only correct button]
  //rect( pauseX1, pauseY1, buttonSide, buttonSide ); //Layout
  rect( pauseX1, pauseY1, pauseWidth, buttonSide );
  rect( pauseX2, pauseY2, pauseWidth, buttonSide );
  //
  //Play Button //center at 25/32 [is the triangle bugging my screen and ugly top left creature]
  //rect( playX, playY, buttonSide, buttonSide ); //Layout
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  playX1 = pauseX1;
  playY1 = pauseY1;
  playX2 = pauseX1 + buttonReferentMeasure;
  playY2 = pauseY3 + buttonReferentMeasure*1/2;
  playX3 = pauseX1;
  playY3 = shuffleY;
  //
  //
  //Fast Forward in the Song  //To the right of center button
  //rect( ffX, ffY, buttonSide, buttonSide ); //Layout
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
  //Rewind in the Song  //to the left of center button
  //rect( rrX, rrY, buttonSide, buttonSide ); //Layout
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
  //Next Button, skip file  //to the right of ff within song
  //rect( nextX, nextY, buttonSide, buttonSide ); //Layout
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
  //
  //Previous Button  //to the left of rewind
  rect( prevX, prevY, buttonSide, buttonSide ); //Layout
  //triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  //rect( prevX, prevY, prevWidth, buttonSide );
  //
  //Loop the Song Once, merged with normal loop
  rect( loop1X, loop1Y, buttonSide, buttonSide ); //Layout
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //triangle( loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3 );
  //
  //Loop the Song Infinitely //offest middle right
  rect( loopIX, loopIY, buttonSide, buttonSide ); //Layout
  ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //triangle( loopIX1, loopIY1, loopIX2, loopIY2, loopIX3, loopIY3 );
  //
  //Shuffle //left r2
  rect( shuffleX, shuffleY, buttonSide, buttonSide ); //Layout
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
