/* BG Image Example
 */
//global variables
int appWidth, appHeight;
float BGImageX, BGImageY, BGImageWidth, BGImageHeight;
PImage pic;
String pathway, fileName;
Boolean nightmode = false;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0, picXAdjusted=0.0, picYAdjusted=0.0; //if requires previous values, not
float whiteSpace=0.0;
Boolean imageCenter=true, imageBottomR=false; //dev level image justification
//
size(500, 100); //landscape
appWidth = width;
appHeight = height;
//
//Population
BGImageX = appWidth*0;
BGImageY = appHeight*0;
BGImageWidth = appWidth-1;
BGImageHeight = appHeight-1;
String upFolder = "..";
String openFolder = "/";
String folder1 = "Background Image";
String folder2 = "Landscape and Square Images";
String folder3 = "usedImages";
pathway = folder3 + openFolder;
fileName = "omoikiri.jpg";
pic = loadImage( pathway + fileName );
int picWidth = 2168; //original dimensions
int picHeight= 3840;
//large dimensions algorythm for aspect ratio
int smallerDimension, biggerDimension;
float imageHeightRatio, imageWidthRatio;
//int ;
if ( picHeight >= picHeight ) { //true if landscape or square
  biggerDimension = picWidth;
  smallerDimension = picHeight;
  imageHeightRatio = float(smallerDimension) / float(biggerDimension); //ratio <1, fixed by casting
  picWidthAdjusted = BGImageWidth;//compresses into rect
  picHeightAdjusted = picHeightAdjusted*imageHeightRatio;//caulated variable from compressed variable
  //
  picXAdjusted = BGImageX;
  picYAdjusted = BGImageY;
  whiteSpace = BGImageHeight - picHeightAdjusted;
  if ( imageCenter=true ) picYAdjusted = BGImageY + whiteSpace*1/2;
  if (imageBottomR==true ) picYAdjusted = BGImageY + whiteSpace;
  //
  if ( picHeightAdjusted > BGImageHeight ) {//error catch: adjusted height bigger than rect()
    picHeightAdjusted = BGImageHeight;//automatic compression algorithm
    picWidthAdjusted = picWidthAdjusted*imageHeightRatio;
    whiteSpace = BGImageWidth - picWidthAdjusted;
    if ( imageCenter=true ) picXAdjusted = BGImageX + whiteSpace*1/2;
    if (imageBottomR==true ) picXAdjusted = BGImageX + whiteSpace;
  }
  //
} else { //false if portrait
  biggerDimension = picWidth;
  smallerDimension = picHeight;
  imageHeightRatio = smallerDimension / biggerDimension; //ratio <1, fixed by casting
  picWidthAdjusted = BGImageWidth;//compresses into rect
  picHeightAdjusted = picHeightAdjusted*imageHeightRatio;//caulated variable from compressed variable
  picXAdjusted = BGImageX;
  picYAdjusted = BGImageY;
}
//
//rectagle layout and canvas
//rect( BGImageX, BGImageY, BGImageWidth, BGImageHeight );
//
if (nightmode==false) tint(255, 128);
if (nightmode==true) tint(20, 19, 20);
//
//no aspect ratio image
//image ( pic, BGImageX, BGImage, BGImageWidth, BGImageHeight );
//aspect ratio image
println( picWidthAdjusted, picHeightAdjusted );//shows human error & zero values | view human error on variables
image( pic, picHeightAdjusted, picWidthAdjusted, picXAdjusted, picYAdjusted );
//
//End Main Program
