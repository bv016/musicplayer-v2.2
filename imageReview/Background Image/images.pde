/* BG Image Example
 */
//global variables
int appWidth, appHeight;
float BGImageX, BGImageY, BGImageWidth, BGImageHeight;
PImage pic;
String pathway, fileName;
Boolean nightmode = false;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0; //if requires previous values, not
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
String folder1 = "usedImages";
String folder2 = "Landscape and Square Images";
pathway = upFolder + openFolder + upFolder + openFolder + folder1 + openFolder + folder2 + openFolder;
fileName = "timmyburger.jpg";
pic = loadImage( pathway + fileName );
int picWidth = 2168; //original dimensions
int picHeight= 3840;
//large dimensions algorythm for aspect ratio
int smallerDimension, biggerDimension;
//int ;

if ( picHeight >= picHeight ) { //true if landscape or square
  biggerDimension = picWidth;
  smallerDimension = picHeight;
  imageHeightRatio = float(smallerDimension) / float(biggerDimension); //ratio <1, fixed by casting 
  picWidthAdjusted = BGImageWidth;//compresses into rect
  picHeightAdjusted = picHeightAdjusted*imageHeightRatio;//caulated variable from compressed variable
  //
} else { //false if portrait
  biggerDimension = picWidth;
  smallerDimension = picHeight;
  imageHeightRatio = smallerDimension / biggerDimension; //ratio <1, fixed by casting 
  picWidthAdjusted = BGImageWidth;//compresses into rect
  picHeightAdjusted = picHeightAdjusted*imageHeightRatio;//caulated variable from compressed variable
}
//
//rectagle layout and canvas
//rect( BGImageX, BGImageY, BGImageWidth, BGImageHeight );
//
if (nightmode==false) tint(255, 128);
if (nightmode==true) tint(20,19,20);
//
//no aspect ratio image
//image ( pic, BGImageX, BGImage, BGImageWidth, BGImageHeight );
//aspect ratio image
println( picWidthAdjusted, picHeightAdjusted );//shows human error & zero values | view human error on variables
image( pic, BGImageX, BGImageY, picAdjusted, picHeightAdjusted );
//
//End Main Program
