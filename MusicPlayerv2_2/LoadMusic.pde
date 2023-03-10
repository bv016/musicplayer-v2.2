void loadMusic() {
  minim = new Minim(this);
  //
  // Concatention of Pathway + File Name //rename everything w/o spaces
  String musicPathway = "../music/"; //from sketch to music file
  String soundEffectPathway = "../soundfx/"; // from sketch to sound effect folder
  String FullofYou = "FullofYou.mp3";
  String 想いきり = "想いきり.mp3";
  String DHalfMoon = "DHalfMoon.mp3";
  String StealThisNight = "StealThisNight.mp3";
  String pathetic = "pathetic.mp3";
  String LastTrainAt25Oclock = "LastTrainAt25Oclock.mp3";
  String Clouds = "Clouds.mp3";
  String LikeYou = "LikeYou.mp3";
  song0 = minim.loadFile( musicPathway + "../music/FullofYou.mp3" );
  song1 = minim.loadFile( musicPathway + "../music/想いきり.mp3");
  song2 = minim.loadFile( musicPathway + "../music/DHalfMoon.mp3)");
  song3 = minim.loadFile( musicPathway + "../music/StealThisNight.mp3");
  song4 = minim.loadFile( musicPathway + "../music/pathetic");
  song5 = minim.loadFile( musicPathway + "../music/LastTrainAt25Oclock.mp3");
  song6 = minim.loadFile( musicPathway + "../music/Clouds.mp3");
  song7 = minim.loadFile( musicPathway + "../music/LikeYou.mp3");
  soundEffect0 = minim.loadFile("../OGMinecraftDeath.m4a/");
  soundEffect1 = minim.loadFile("../Vineboom.m4a/");
} //End loadMusic
