void loadMusic() {
  minim = new Minim(this);
  //
  // Concatention of Pathway + File Name //rename everything w/o spaces
  String musicPathway = "../music/"; //from sketch to music file
  String soundEffectPathway = "../../music/"; // from sketch to sound effect folder
  String Full of You = "Full of You.mp3";
  String 想いきり = "想いきり.mp3";
  String D (Half Moon) = "D Half Moon.mp3";
  String Steal This Night = "Steal This Night.mp3";
  String pathetic! = "pathetic!.mp3";
  String Last Train At 25 Oclock = "Last Train At 25 Oclock.mp3";
  String Clouds = "Clouds.mp3";
  String Like You = "Like You.mp3";
  song0 = minim.loadFile( musicPathway + "../../music/Full of You.mp3" );
  song1 = minim.loadFile( musicPathway + "../../music/想いきり.mp3");
  song2 = minim.loadFile( musicPathway + "../../music/D Half Moon.mp3)");
  song3 = minim.loadFile( musicPathway + "../../music/Steal This Night.mp3");
  song4 = minim.loadFile( musicPathway + "../../music/pathetic!");
  song5 = minim.loadFile( musicPathway + "../../music/Last Train At 25 Oclock.mp3");
  song6 = minim.loadFile( musicPathway + "../../music/Clouds.mp3");
  song7 = minim.loadFile( musicPathway + "../../music/Like You.mp3");
  soundEffect0 = minim.loadFile("../OG Minecraft Death.m4a/");
  soundEffect1 = minim.loadFile("../Vine boom.m4a/");
} //End loadMusic
