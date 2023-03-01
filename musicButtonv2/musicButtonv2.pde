//Global Variables
float buttonReferentMeasure;
float buttonSide, spaceWidth, spaceHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth;
//
void setup() {
  //Display
  size(700, 500); //width, height
  //fullScreen(); //displayWidth, displayHeight
  //
  //Population: visual data
  buttonReferentMeasure = width *
  buttonSide = buttonReferentMeasure;
  spaceWidth = buttonReferentMeasure * ;
  spaceHeight = buttonReferentMeasure;
  //
  float centerX = width * ; //Local Variable, garbage collected at end of setup(), see println in draw()
  float centerY = height * ;
  print("Confirming Center X:", centerX);
  println("/t Confirming Center Y:", centerY); //says a character escape
  //
  pauseX1 = centerX - buttonReferentMeasure*;
  pauseY1 = centerY - buttonReferentMeasure;
  pauseWidth = buttonReferentMeasure * ;
  pauseX2 = centerX + buttonReferentMeasure*;
  pauseY2 = pauseY1; 
  //
} //End setup
//
void draw() {
  //
  //Confirming Local Variable Center X & Y garbage collected from setup()
  //print("Confirming Center X:", centerX);
  //println("/t Confirming Center Y:", centerY);
  //
  //Button Space
  //rect( spaceX, spaceY, spaceWidth, buttonSide );
  //
  //Pause Button
  //rect( pauseX1, pauseY1, buttonSide, buttonSide ); //Layout
  //rect( pauseX1, pauseY1, pauseWidth, buttonSide );
  //rect( pauseX2, pauseY2, pauseWidth, buttonSide );
  //
  //Play Button
  //rect( playX, playY, buttonSide, buttonSide ); //Layout
  //triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  //
  //Fast Forward in the Song
  //rect( ffX, ffY, buttonSide, buttonSide ); //Layout
  //triangle( ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A );
  //triangle( ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B );
  //
  //Reverse in the Song
  //rect( rrX, rrY, buttonSide, buttonSide ); //Layout
  //triangle( rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A );
  //triangle( rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B );
  //
  //Next Button, skip file
  //rect( nextX, nextY, buttonSide, buttonSide ); //Layout
  //triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3 );
  //rect( nextX, nextY, nextWidth, buttonSide );
  //
  //Previous Button
  //rect( prevX, prevY, buttonSide, buttonSide ); //Layout
  //triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  //rect( prevX, prevY, prevWidth, buttonSide );
  //
  //Loop the Song Once
  //Students to Develop
  //rect( loop1X, loop1Y, buttonSide, buttonSide ); //Layout
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //triangle( loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3 );
  //
  //Loop the Song Infinitely
  //Students to Develop
  //rect( loopIX, loopIY, buttonSide, buttonSide ); //Layout
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //triangle( loopIX1, loopIY1, loopIX2, loopIY2, loopIX3, loopIY3 );
  //
  //OPTINAL Shuffle
  //rect( shuffleX, shuffleY, buttonSide, buttonSide ); //Layout
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
