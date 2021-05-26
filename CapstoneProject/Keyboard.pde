void mouseReleased(){
  if (GameMode == Intro){
    if (StartBeginningAnimation == false){
      //myClient.write("Agul");
      StartBeginningAnimation = true;
    }
  }
  else if (GameMode == Menu){
    if (mouseX >= 480+195 & mouseX <= 960+195 && mouseY >= 376 && mouseY <= 524){
      MagnificentMenuMusic.stop();
      GameMode = GameChapterSelection;
    }     
    if (mouseX >= 480+195 & mouseX<= 960+195 && mouseY >= 576 && mouseY <= 724){
      MagnificentMenuMusic.stop();
      GameMode = Tutorial;
    }
    if (mouseX>480+195 & mouseX<960+195 && mouseY>776 && mouseY<924){
  
    } 
  }
  else if (GameMode == Tutorial || GameMode == Game){
    if (dist(1680,95,mouseX,mouseY) <= 60){// Click Game Option Stop Buttons
      if (GamePause){// close
        GamePause = false;
      }
      else {// open
        ControlStickPosition.set(0,0);
        MovementX = 0;
        MovementY = 0;
        MoveStickActivate = false;
        GamePause = true;
      }
    }  
    
    if (GamePause){// Open Game Option Stop Buttons
      if (mouseX >= (width-137)/2-300 && mouseX <= (width-137)/2-300+600 && mouseY >= height/2-200 && mouseY <= height/2-200+120){// return to menu
        //CalmingPiano.stop();
        //MagnificentMenuMusic.play();
        //MagnificentMenuMusic.loop();
        //CalmingPiano.play();
        GalaxyBackgroundRotate = 0;
        ControlStickPosition.set(0,0);
        FaceRight = true;
        MovementX = 0;
        MovementY = 0;
        MoveStickActivate = false;
        MapTutorialPosition.set(-1800,-1500);// default position;
        ExtendMapLeft = false;
        ExtendMapRight = false;
        ExtendMapTop = false;
        ExtendMapBottom = false;
        MovingLeft = false;
        MovingRight = false;
        MovingUp = false;
        MovingDown = false;
        TutorialRightBox = false;
        ExtraExtendPosition.set(0,0);
        GamePause = false;
        TutorialStart = false;
        TutorialBeginningAnimationFadeStart = false;
        TutorialBeginDealy = 0;
        TutorialBeginningAnimationFade = 255;
        TutorialHpBarDescriptionDelay = 0;
        TutorialMissionDescriptionDelay = 0;
        TutorialAttackKeyDescriptionDelay = 0;
        TutorialMovementKeyDescriptionDelay = 0;
        TutorialCheckYourMission = 0;
        DescriptionNext = 0; 
        TutorialMissionShow = false;
        ControlStickShow = false;
        AttackButtonShow = false;
        HealthBar = false;
        MissionBar = false;
        MissionBarMotion = 0;
        MissionBarTranslateY = -518;
        MissionBarMoveDown = false;
        TutorialHp = 34;
        TutorialArmour = 20;
        TutorialCompletedFill = 60;
        WalkAround = 60;
        WalkAroundTimer = 0;  
        AnimationFinished = false;
        GameMode = Menu;
      }
      else if (mouseX >= (width-137)/2-300 && mouseX <= (width-137)/2-300+600 && mouseY >= height/2 && mouseY <= height/2+120){
        GamePause = false;
      }
    }
    else {// Game Pause Closed
      if (GameMode == Tutorial){// buttons for Tutorial
        if (mouseX >= 0 && mouseX <= width && mouseY > 155 && mouseY <= height){
          TutorialStart = true;
        }
        if (TutorialBeginDealy >= 80){// Start tutorial button clickable
          if (mouseX >= (width-137)/2-200 && mouseX <= (width-137)/2-200+400 && mouseY >= 800 && mouseY <= 920){
            TutorialBeginningAnimationFadeStart = true;
            //CalmingPiano.loop();
          }
        }
    
        if (dist(330,17,mouseX,mouseY) <= 50 && MissionBarMotion == 0){// closed
          if (DescriptionNext == 5) TutorialMissionShow = true;
          MissionBarMoveDown = true;
        }
        if (dist(330,535,mouseX,mouseY) <= 50 && MissionBarMotion == 1){// fully extended
          if (DescriptionNext == 5) TutorialMissionShow = true;
          MissionBarMoveDown = false;
        }
        
        if (DescriptionNext == 0 && mouseX >= 1540 && mouseX <= 1540+140 && mouseY >= 500 && mouseY <= 560 && TutorialBeginningAnimationFade == 0){// 1540,500,140,60
          DescriptionNext = 1;
        }
        if (DescriptionNext == 1 && mouseX >= 765 && mouseX <= 765+180 && mouseY >= 355 && mouseY <= 415 && HealthBar){// 765,355,180,60
          DescriptionNext = 2;
          AnimationFinished = true;
        }
        else if (DescriptionNext == 2 && MissionBar){
          if (MissionBarMotion == 0){// Close 240,950+MissionBarTranslateY,180,60
            if (mouseX >= 240 && mouseX <= 240+180 && mouseY >= 432 && mouseY <= 492){
               DescriptionNext = 3;
               AnimationFinished = false;
            }
          }
          else if (MissionBarMotion == 1){// Extended
            if (mouseX >= 240 && mouseX <= 240+180 && mouseY >= 950 && mouseY <= 1010){
              MissionBarMoveDown = false;
              DescriptionNext = 3;  
              AnimationFinished = false;
            }
          }
        }
        else if (DescriptionNext == 3 && mouseX >= 1432 && mouseX <= 1432+180 && mouseY >= 610 && mouseY <= 670 && AttackButtonShow){// 1432,610,180,60
          DescriptionNext = 4;
        }
        else if (DescriptionNext == 4 && mouseX >= 210 && mouseX <= 390 && mouseY >= 465 && mouseY <= 535 && ControlStickShow){// 210,465,180,70
          DescriptionNext = 5;
        }
        
        
        
      }
      else if (GameMode == Game){
      
      }
      
    }
      
  }
  else if (GameMode == GameChapterSelection){
    if (dist(mouseX,mouseY,122,940) <= 80){
      GameMode = Menu;
      
    }
  }
  


    //rect((width-137)/2 - 300,height/2 - 200, 600,120,2);
    //rect((width-137)/2 - 300,height/2, 600,120,2);



}
//=====================================================================================================================================================
