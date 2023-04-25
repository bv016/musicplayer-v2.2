//Loads music
void loadMusic() {
  minim = new Minim(this);
  //
  // Concatention of Pathway + File Name
  String musicPathway = "../mp3sMD/"; //from sketch to music file
  String soundEffectPathway = "../soundfx/"; // from sketch to sound effect folder
  String FullofYou = "FullofYouMD.mp3";
  String 想いきり = "想いきりMD.mp3";
  String DHalfMoon = "DHalfMoonMD.mp3";
  String StealThisNight = "StealThisNightMD.mp3";
  String pathetic = "patheticMD.mp3";
  String LastTrainAt25Oclock = "LastTrainAt25OclockMD.mp3";
  String Clouds = "CloudsMD.mp3";
  String LikeYou = "LikeYouMD.mp3";
  songs[0] = minim.loadFile( musicPathway + "FullofYouMD.mp3" );
  songs[1] = minim.loadFile( musicPathway + "想いきりMD.mp3");
  songs[2] = minim.loadFile( musicPathway + "DHalfMoonMD.mp3");
  songs[3] = minim.loadFile( musicPathway + "StealThisNightMD.mp3");
  songs[4] = minim.loadFile( musicPathway + "patheticMD");
  songs[5] = minim.loadFile( musicPathway + "LastTrainAt25OclockMD.mp3");
  songs[6] = minim.loadFile( musicPathway + "CloudsMD.mp3");
  songs[7] = minim.loadFile( musicPathway + "LikeYouMD.mp3");
  sfx[0] = minim.loadFile( soundEffectPathway + "../soundfx/OGMinecraftDeath.mp3");
  sfx[1] = minim.loadFile( soundEffectPathway + "../soundfx/Vineboom.mp3");
} //End loadMusic
