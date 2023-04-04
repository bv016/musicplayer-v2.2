//global variables
//
float textRectX1, textRectY1, textRectWidth1, textRectHeight1;
float textRectX2, textRectY2, textRectWidth2, textRectHeight2;
float textRectX3, textRectY3, textRectWidth3, textRectHeight3;
void allText() {
}//end all text
//
void textSetup() {
  //Population, from display
  textRectX1 = width*1/5;
  textRectY1 = height*1/10;
  textRectWidth1 = width*3/5;
  textRectHeight1 = height*1/10;
  //
  //rect(textRectX1, textRectY1, textRectWidth1, textRectHeight1);
  rect(textRectX2, textRectY2, textRectWidth2, textRectHeight2);
  rect(textRectX3, textRectY3, textRectWidth3, textRectHeight3);
  //
  /*
  println("Start of Consol");
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  font = createFont ("High Tower Text", 190);
  //Tools / create font / find font / do not press "ok", known bug
}//
//end all text
//
void textDraw1() {
  //
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see processing.org / reference
  //Horizontal Values (X): [LEFT | CENTER | RIGHT]
  //Vertical Values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  int textSize = 25; //Change the number until it fits, largest font size
  textFont(font, textSize);
  //Printing text on the screen (CANVAS)
  text( string, textRectX1, textRectY1, textRectWidth1, textRectHeight1 );
  //
  fill(resetWhiteInk); //reset
  //
}//end textDraw1
//
//
void textDraw2() {
}//end textDraw 2
//
//
void textDraw3() {
}//end textdraw3
//end text subprogram
