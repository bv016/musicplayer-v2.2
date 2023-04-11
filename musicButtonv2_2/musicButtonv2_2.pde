//[ ] merge loop buttons into double function
//[X] move shuffle to the left of loop

float buttonReferentMeasure;
float buttonSide, spaceX, spaceY, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseX3, pauseY3, pauseWidth;
float playX, playY, playX1, playY1, playX2, playY2, playX3, playY3, stopX, stopY, loopIX, loopIY;
float ffX, ffY, rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
float loopPlaylistX, loopPlaylistY;
float shuffleX, shuffleY;
float ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A;
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
  playX1 = pauseX1;
  playY1 = pauseY1;
  stopX = pauseX1;
  stopY = height * 28/32;
  pauseX3 = pauseX1 + 3*pauseWidth;
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
  ffX = pauseX1 + ( buttonPositionColumn*buttonReferentMeasure );
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
  //Pause Button //center at 25/32
  rect( pauseX1, pauseY1, buttonSide, buttonSide ); //Layout
  rect( pauseX1, pauseY1, pauseWidth, buttonSide );
  rect( pauseX2, pauseY2, pauseWidth, buttonSide );
  //
  //Play Button //center at 25/32
  rect( playX, playY, buttonSide, buttonSide ); //Layout
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  //
  //Fast Forward in the Song  //To the right of center button
  rect( ffX, ffY, buttonSide, buttonSide ); //Layout
  triangle( ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A );
  //triangle( ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B );
  //
  //Rewind in the Song  //to the left of center button
  rect( rrX, rrY, buttonSide, buttonSide ); //Layout
  //triangle( rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A );
  //triangle( rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B );
  //
  //Next Button, skip file  //to the right of ff within song
  rect( nextX, nextY, buttonSide, buttonSide ); //Layout
  //triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3 );
  //rect( nextX, nextY, nextWidth, buttonSide );
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
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
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