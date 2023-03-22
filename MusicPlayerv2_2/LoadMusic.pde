void loadMusic() {
  minim = new Minim(this);
  //
  // Concatention of Pathway + File Name 
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
  songs[0] = minim.loadFile( musicPathway + "../music/FullofYou.mp3" );
  songs[1] = minim.loadFile( musicPathway + "../music/想いきり.mp3");
  songs[2] = minim.loadFile( musicPathway + "../music/DHalfMoon.mp3");
  songs[3] = minim.loadFile( musicPathway + "../music/StealThisNight.mp3");
  songs[4] = minim.loadFile( musicPathway + "../music/pathetic");
  songs[5] = minim.loadFile( musicPathway + "../music/LastTrainAt25Oclock.mp3");
  songs[6] = minim.loadFile( musicPathway + "../music/Clouds.mp3");
  songs[7] = minim.loadFile( musicPathway + "../music/LikeYou.mp3");
  sfx[0] = minim.loadFile( soundEffectPathway + "../soundfx/OGMinecraftDeath.mp3");
  sfx[1] = minim.loadFile( soundEffectPathway + "../soundfx/Vineboom.mp3");
} //End loadMusic
