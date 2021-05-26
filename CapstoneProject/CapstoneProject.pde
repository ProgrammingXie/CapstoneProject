//import processing.net.*;
//Client myClient;

//import processing.sound.*;

//import fisica.*;

import cassette.audiofiles.*;

//import ddf.minim.*;
//import ddf.minim.analysis.*;
//import ddf.minim.effects.*;
//import ddf.minim.signals.*;
//import ddf.minim.spi.*;
//import ddf.minim.ugens.*;


ArrayList<IntroObjects> myIntroObjects; 
ArrayList<IntroObjectsPurple> myIntroObjectsPurple;

//========================================================

//Minim minim;
//AudioPlayer Agul;
SoundFile Agul, SpaceExplosionBeginning, MagnificentMenuMusic, CalmingPiano;

//FWorld Test;
//int FisicaGridSize = 32;

PImage GalaxyBackground;
PImage StillLeft;
PImage StillRight;
PImage TutorialMap;
PImage GameChapterSelectionBackground;
//PImage Helmet0;
//PImage Helmet1;

//========================================================

boolean StartBeginningAnimation = false;
int TextTimer = 0;
boolean GalaxyFadeStart = false;
int GalaxyFade = 255;
boolean DamonYellowShow = false;
boolean AraxPurpleShow = false;
int DamonMoveDelay = 0;
int AraxMoveDelay = 0;
int DamonMove = 0;
int AraxMove = 0;
boolean DamonCircle = false;
boolean AraxCircle = false;
int DamonCircleSize = 0;
int AraxCircleSize = 0;
boolean DamonCircleExpand = false;
boolean AraxCircleExpand = false;
int DamonCircleSecondExpand = 0;
int AraxCircleSecondExpand = 0;
boolean GreatWarBegin = false;
int GreatWarMove = 0;
int WhiteExplosionSize = 0;
boolean WhiteExplosionFadeBegin = false;// false
int WhiteExplosionFade = 0;// 255

//boolean GalaxyForwardRotate = true;
float GalaxyBackgroundRotate = 0;
int PlayBackground = 125;// menu buttons
int TutorialBackground = 125;
int SettingBackground = 125;

PVector ControlStickPosition = new PVector(0,0);
boolean FaceRight = true;
float MovementX = 0;
float MovementY = 0;
boolean MoveStickActivate = false;
PVector MapTutorialPosition = new PVector(-1800,-1500);// default position;
boolean ExtendMapLeft = false;
boolean ExtendMapRight = false;
boolean ExtendMapTop = false;
boolean ExtendMapBottom = false;
boolean MovingLeft = false;
boolean MovingRight = false;
boolean MovingUp = false;
boolean MovingDown = false;
boolean TutorialRightBox = false;
PVector ExtraExtendPosition = new PVector(0,0);

boolean GamePause = false;
boolean TutorialStart = false;
boolean TutorialBeginningAnimationFadeStart = false;// false
int TutorialBeginDealy = 0;
int TutorialBeginningAnimationFade = 255;// 255
int TutorialHpBarDescriptionDelay = 0;
int TutorialMissionDescriptionDelay = 0;
int TutorialAttackKeyDescriptionDelay = 0;
int TutorialMovementKeyDescriptionDelay = 0;
int TutorialCheckYourMission = 0;
int DescriptionNext = 0; // 0 default, nothing is checked yet
boolean TutorialMissionShow = false;// false
boolean ControlStickShow = false;// false
boolean AttackButtonShow = false;// false
boolean HealthBar = false;// false
boolean MissionBar = false;// false;
int MissionBarMotion = 0;// 0 = closed, 1 = extended, 2 = moving
int MissionBarTranslateY = -518;// closed postion Y
boolean MissionBarMoveDown = false;// false
int TutorialHp = 34;
int TutorialArmour = 20;
int TutorialCompletedFill = 60;// #0FBF54
int WalkAround = 60;// #0FBF54
int WalkAroundTimer = 0;
boolean AnimationFinished = false;
//String Message = "";

int ChaptersUnlocked = 1;


//========================================================

int GameMode;
final int Intro = 0;
final int Menu = 1;
final int Game = 2;
final int Tutorial = 3;
final int Setting = 4;
final int GameChapterSelection = 5;
//========================================================
//color black = #000000;

void setup() {
  //fullScreen();
  size(1920,1080);// 1920-137 wide
  //frameRate(40);
  frameRate(100);
  
  //GameMode = Intro;
  //GameMode = Menu;
  //GameMode = Tutorial;
  GameMode = GameChapterSelection;
  
  myIntroObjects = new ArrayList<IntroObjects>();
  for (int i = 0; i < 300; i++){
    myIntroObjects.add(new IntroObjects());
  }
  
  myIntroObjectsPurple = new ArrayList<IntroObjectsPurple>();
  for (int i = 0; i < 300; i++){
    myIntroObjectsPurple.add(new IntroObjectsPurple());
  }
  
  //myClient = new Client(this, "127.0.0.1", 1234);
  //minim = new Minim(this);
  //Agul = minim.loadFile("GaiaOSTAgulAdvent.mp3");
  Agul = new SoundFile(this,"GaiaOSTAgulAdvent.mp3");
  SpaceExplosionBeginning = new SoundFile(this, "Explosion.mp3");
  MagnificentMenuMusic = new SoundFile(this, "Magnificent.mp3");
  CalmingPiano = new SoundFile(this, "CalmingPiano.mp3");
  
  //Agul.play();
  
  GalaxyBackground = loadImage("GalaxyBackground2.jpg");
  StillLeft = loadImage("StillLeft.png");
  StillRight = loadImage("StillRight.png");
  //TutorialMap = loadImage("TutorialMap.png");
  //Helmet0 = loadImage("Helmet0.png");
  //Helmet1 = loadImage("code/Helmet1.png");
  
  //Fisica.init(this);
  //Test = new FWorld();
  
  TutorialMap = loadImage("TutorialMap.png");
  GameChapterSelectionBackground = loadImage("AbstractB.jpg");
  //int FisicaX = 0;
  //int FisicaY = 0;
  
  //while (FisicaY < TutorialMap.height){
  //  color c = TutorialMap.get(FisicaX,FisicaY);
    
  //  if (c == black){
  //    FBox b = new FBox(FisicaGridSize,FisicaGridSize);
  //    b.setStatic(true);
  //    b.setFillColor(black);
  //    b.setPosition(FisicaX*FisicaGridSize, FisicaY*FisicaGridSize);
  //    Test.add(b);
  //  }
    
  //  FisicaX++;
  //  if (FisicaX == TutorialMap.width){
  //    FisicaX = 0;
  //    FisicaY++;
  //  }
  //}

}
//=====================================================================================================================================================

void draw() { 
  background(0);  
  
  if (GameMode == Intro){
    Intro();
  }
  else if (GameMode == Menu){
    Menu();
  }
  else if (GameMode == Tutorial){
    Tutorial();
  }
  else if (GameMode == GameChapterSelection){
    GameChapterSelection();
  }

  //image(Helmet0,300,300);
  textAlign(CORNER,CORNER);
  fill(#00B474);
  textSize(30);
  text("fps:",10,35);
  text(frameRate,70,35);
  
  fill(255,0,0);
  noStroke();
  ellipse(mouseX,mouseY,10,10);// red ball show mouse location
 
  println(mouseX,mouseY);
 //println(width,height); 1920,1080
 //println(StartBeginningAnimation);
 //println(TextTimer);
 //println(myIntroObjects.size());
 //println(ControlStickPosition);
 //println(Position);
 //println(ControlStickPosition.mag());
 //println(TutorialRightBox);
 //println(ExtendMapTop);
 //println(MapTutorialPosition);
 //println(MissionBarTranslateY);
 //println(MissionBarMotion);
 //println(MissionBarMoveDown);
 //println(TutorialBeginningAnimationFadeStart);
 //println(DescriptionNext);
  //print(MagnificentMenuMusic.play());
  //print(MagnificentMenuMusic.stop());
  //println(Message);
  //println(myClient.available());
  //println(AnimationFinished);
}
//===================================================================================================================================================
