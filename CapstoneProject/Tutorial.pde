void Tutorial() {  
  //MagnificentMenuMusic.stop();

  background(0);
  pushMatrix();
  translate(MapTutorialPosition.x, MapTutorialPosition.y);
  imageMode(CORNER);
  image(TutorialMap, 0, 0);
  popMatrix();

  imageMode(CENTER);
  if (FaceRight) {
    stroke(255, 0, 0);
    strokeWeight(3);
    //line(width/2+ExtraExtendPosition.x,414, width/2+ExtraExtendPosition.x+200,414);
    //line(width/2+ExtraExtendPosition.x,672, width/2+ExtraExtendPosition.x+200,672);
    image(StillRight, width/2+ExtraExtendPosition.x, height/2+ExtraExtendPosition.y, 141, 240);// 141,240   +50
  } else {
    image(StillLeft, width/2+ExtraExtendPosition.x, height/2+ExtraExtendPosition.y, 141, 240);// 191,290
  }
  imageMode(CORNER);

  if (!GamePause) {
    if (MapTutorialPosition.x > 0) {
      MapTutorialPosition.x = 0;// map left limit
      ExtendMapLeft = true;
    }
    if (MapTutorialPosition.x < -2083-137) {
      MapTutorialPosition.x = -2083-137;// map right limit
      ExtendMapRight = true;
    }
    if (MapTutorialPosition.y > 0) {
      MapTutorialPosition.y = 0;// map top limit
      ExtendMapTop = true;
    }
    if (MapTutorialPosition.y  < -1920) {
      MapTutorialPosition.y = -1920;// map bottom limit;
      ExtendMapBottom = true;
    }


    if (MovingLeft) {// Left Side Figure back to center     
      if (ExtendMapLeft) {
        ExtraExtendPosition.x -= MovementX;
        if (ExtraExtendPosition.x <= 141 - width/2 - 28) {
          ExtraExtendPosition.x = 141 - width/2 - 28;
        }
      } else if (ExtendMapRight) {
        ExtraExtendPosition.x -= MovementX;
        if (ExtraExtendPosition.x <= 0) {
          ExtraExtendPosition.x = 0;
          ExtendMapRight = false;
        }
      } else {
        MapTutorialPosition.x += MovementX;
      }
    }


    if (MovingRight) {// Right Side Figure back to center 
      if (ExtendMapLeft) {
        ExtraExtendPosition.x += MovementX;
        if (ExtraExtendPosition.x >= 0) {
          ExtraExtendPosition.x = 0;
          ExtendMapLeft = false;
        }
      } else if (ExtendMapRight) {
        ExtraExtendPosition.x += MovementX;
        if (MapTutorialPosition.y >= -990 && MapTutorialPosition.y <= -848) {// -968   -873  Special Case Right Box
          if (ExtraExtendPosition.x >= (width - 53 - 141 - 137/2 + 12) - width/2) {// 
            ExtraExtendPosition.x = (width - 53 - 141 - 137/2 + 12) - width/2;
          }
        } else {
          if (ExtraExtendPosition.x >= (width - 411 - 141 - 137/2 + 15) - width/2) {// 411 width - 411;
            ExtraExtendPosition.x = (width - 411 - 141 - 137/2 + 15) - width/2;
          }
        }
      } else {
        MapTutorialPosition.x -= MovementX;
      }
    }  

    if (ExtraExtendPosition.x > (width - 411 - 141 - 137/2 + 20) - width/2) {
      TutorialRightBox = true;
    } else {
      TutorialRightBox = false;
    }
    //if (MapTutorialPosition.y <= -873 && MapTutorialPosition.y >= -968){
    //  println("........................");
    //}     

    if (MovingUp) {// Up Side Figure back to center  
      if (!TutorialRightBox) {
        if (ExtendMapTop) {
          ExtraExtendPosition.y -= MovementY;
          if (ExtraExtendPosition.y <= (53/2 + 240/2 + 20) - height/2) {// 239/2
            ExtraExtendPosition.y = (53/2 + 240/2 + 20) - height/2;
          }
        } else if (ExtendMapBottom) {
          ExtraExtendPosition.y -= MovementY;
          if (ExtraExtendPosition.y <= 0) {
            ExtraExtendPosition.y = 0;
            ExtendMapBottom = false;
          }
        } else {
          MapTutorialPosition.y += MovementY;
        }
      } else {
        if (ExtraExtendPosition.x > (width - 411 - 141 - 137/2) - width/2) {// special case, right box
          MapTutorialPosition.y += MovementY;
          if (MapTutorialPosition.y >= -848) MapTutorialPosition.y = -848;
        }
      }
    }


    if (MovingDown) {// B Side Figure back to center 
      if (!TutorialRightBox) {
        if (ExtendMapBottom) {
          ExtraExtendPosition.y += MovementY;
          if (ExtraExtendPosition.y >= (height - 53/2 - 240/2 - 40) - height/2) {
            ExtraExtendPosition.y = (height - 53/2 - 240/2 - 40) - height/2;
          }
        } else if (ExtendMapTop) {
          ExtraExtendPosition.y += MovementY;
          if (ExtraExtendPosition.y >= 0) {// 239/2
            ExtraExtendPosition.y = 0;
            ExtendMapTop = false;
          }
        } else {
          MapTutorialPosition.y -= MovementY;
        }
      } else {
        if (ExtraExtendPosition.x > (width - 411 - 141 - 137/2) - width/2) {// special case, right box
          MapTutorialPosition.y -= MovementY;
          if (MapTutorialPosition.y <= -990) MapTutorialPosition.y = -990;
        }
      }
    }
  }

  GamePlayScreenButtons();

  fill(#000212, TutorialBeginningAnimationFade);
  noStroke();
  rect(0, 0, width, height);

  if (TutorialStart) {
    if (!GamePause) TutorialBeginDealy++;
    if (TutorialBeginDealy >= 20 && !TutorialBeginningAnimationFadeStart) {
      fill(#00C67C);
      textAlign(CENTER,CENTER);
      textSize(70);
      text("The FOLOWING GAMEPLAY IS A TUTORIAL", (width-137)/2, height/2 - 200);
      text("DESIGNED TO DEMONSTRATE FEATURES", (width-137)/2, height/2 - 100);
      text("OF THE GAME", (width-137)/2, height/2);
      if (TutorialBeginDealy >= 80) {
        TutorialBeginDealy = 80;
        textSize(40);
        text("Are You Ready?", (width-137)/2, height/2+150);
        fill(60);
        stroke(#00C67C);
        strokeWeight(3);
        rect((width-137)/2 - 200, 780, 400, 120);
        fill(#00C67C);
        textSize(60);
        text("START", (width-135)/2, 840);
      }
    }   
    if (TutorialBeginningAnimationFadeStart) {
      //CalmingPiano.loop();
      if (!GamePause) TutorialBeginningAnimationFade-=2;
      if (TutorialBeginningAnimationFade <= 0) {
        TutorialBeginningAnimationFade = 0;
        if (DescriptionNext == 0){
          GamePauseButtonDescription();
        }
        else if (DescriptionNext == 1){
          HealthBar = true;
          if (!GamePause) TutorialHpBarDescriptionDelay++;
          if (TutorialHpBarDescriptionDelay >= 40){
            TutorialHpBarDescriptionDelay = 40;
            HpBarDescription();
          }
        }
        else if (DescriptionNext == 2){
          MissionBar = true;
          if (!GamePause) TutorialMissionDescriptionDelay++;
          if (TutorialMissionDescriptionDelay >= 40){
            TutorialMissionDescriptionDelay = 40;
            MissionDescription();
          }
        }
        else if (DescriptionNext == 3){
          AttackButtonShow = true;
          if (!GamePause) TutorialAttackKeyDescriptionDelay++;
          if (TutorialAttackKeyDescriptionDelay >= 40){
            TutorialAttackKeyDescriptionDelay = 40;
            AttackKeyDescription();
          }
        }
        else if (DescriptionNext == 4){
          ControlStickShow = true;
          if (!GamePause) TutorialMovementKeyDescriptionDelay++;
          if (TutorialMovementKeyDescriptionDelay >= 40){
            TutorialMovementKeyDescriptionDelay = 40;
            MovementDescription();
          }
        }
        else if (DescriptionNext == 5){
          if (!GamePause) TutorialCheckYourMission++;
          if (TutorialCheckYourMission >= 20 && !TutorialMissionShow){
            TutorialCheckYourMission = 20;
            CheckMissionForTutorial();
            AnimationFinished = true;
          }
        }
        
        
      }
    }
  } else {
    fill(60);
    textAlign(CENTER, CENTER);
    textSize(100);
    text("CLICK TO BEGIN TUTORIAL", (width-137)/2, height/2-20);
  }

  if (GamePause) {// pause image();
    fill(#000212, 200);
    noStroke();
    rect(0, 0, width, height);
  }
  GamePauseButtonOptions();
}
//=====================================================================================================================================================

void GamePauseButtonDescription(){
  fill(30, 160);
  stroke(#00C67C);
  strokeWeight(3);
  rect(1440,195,340,385);
  fill(#00C67C);
  noStroke();
  triangle(1620,195, 1680,175, 1740,195);
  fill(#00C67C);
  textAlign(CORNER,CORNER);
  textSize(30);
  text("This button will allow",1453,240);
  text("you to pause the game",1453,280);
  text("and give you the option",1453,320);
  text("to return to game menu.",1453,360);
  text("Click \"resume\" or the",1453,400);
  text("same button again to",1453,440);
  text("continue.",1453,480);
  fill(60);
  stroke(#00C67C);
  rect(1540,500,140,60);
  fill(#00C67C);
  textSize(40);
  textAlign(CENTER,CENTER);
  text("NEXT",1610,530);
}
//=====================================================================================================================================================

void HpBarDescription(){
  fill(30, 160);
  stroke(#00C67C);
  strokeWeight(3);
  rect(555,130,600,300);
  fill(#00C67C);
  noStroke();
  triangle(620,130, 660,110, 700,130);
  fill(#00C67C);
  textAlign(CORNER,CORNER);
  textSize(30);
  text("The health bar displays your health and",568,175);
  text("armour. The red represent your health.",568,215);
  text("and the orange represent your armour.",568,255);
  text("Your will only lose your health after you",568,295);
  text("have lost all your armour.",568,335);
  fill(60);
  stroke(#00C67C);
  rect(765,355,180,60);
  fill(#00C67C);
  textSize(40);
  textAlign(CENTER,CENTER);
  text("NEXT",855,385);
}
//=====================================================================================================================================================

void MissionDescription(){
  fill(30, 160);
  stroke(#00C67C);
  strokeWeight(3);
  rect(130,640+MissionBarTranslateY,390,390);
  fill(#00C67C);
  noStroke();
  triangle(290,640+MissionBarTranslateY, 330,620+MissionBarTranslateY, 370,640+MissionBarTranslateY);
  fill(#00C67C);
  textAlign(CORNER,CORNER);
  textSize(30);
  text("This incredible panel will", 143,685+MissionBarTranslateY);
  text("display all your missions.", 143,725+MissionBarTranslateY);
  text("Once a mission has been", 143,765+MissionBarTranslateY);
  text("completed, the checkbox", 143,805+MissionBarTranslateY);
  text("will turn green. You can", 143,845+MissionBarTranslateY);
  text("click the bottom of the", 143,885+MissionBarTranslateY);
  text("panel to open or to close it.", 143,925+MissionBarTranslateY);
  fill(60);
  stroke(#00C67C);
  rect(240,950+MissionBarTranslateY,180,60);
  fill(#00C67C);
  textSize(40);
  textAlign(CENTER,CENTER);
  text("NEXT",330,980+MissionBarTranslateY);
  
}
//=====================================================================================================================================================

void AttackKeyDescription(){
  fill(30, 160);
  stroke(#00C67C);
  strokeWeight(3);
  rect(1300,380,444,310);
  fill(#00C67C);
  noStroke();
  triangle(1560,690, 1600,710, 1650,690);// 1600
  fill(#00C67C);
  textAlign(CORNER,CORNER);
  textSize(30);
  text("The attack button allows you", 1313,425);
  text("to attack enemies with your", 1313,465);
  text("weapon. The player can only", 1313,505);
  text("attack the direction the", 1313,545);
  text("player is facing", 1313,585);
  fill(60);
  stroke(#00C67C);
  rect(1432,610,180,60);
  fill(#00C67C);
  textSize(40);
  textAlign(CENTER,CENTER);
  text("NEXT",1522,640);
  
}
//=====================================================================================================================================================

void MovementDescription(){
  fill(30, 160);
  stroke(#00C67C);
  strokeWeight(3);
  rect(40,240,630,310);
  fill(#00C67C);
  noStroke();
  triangle(260,550, 300,570, 340,550);
  fill(#00C67C);
  textAlign(CORNER,CORNER);
  textSize(30);
  text("You will be able to control your movement by", 53,285);
  text("using this controller. The speed of the player", 53,325);
  text("is determined by how far the central circle", 53,365);
  text("has moved. The further it moves, the faster", 53,405);
  text("the player becomes.", 53,445);
  fill(60);
  stroke(#00C67C);
  rect(210,465,180,70);
  fill(#00C67C);
  textSize(40);
  textAlign(CENTER,CENTER);
  text("NEXT",300,500);
}
//=====================================================================================================================================================


void CheckMissionForTutorial(){
  fill(30,160);
  stroke(#00C67C);
  strokeWeight(4);
  rect(615,180,552,210);
  fill(#00C67C);
  textSize(40);
  textAlign(CENTER,CENTER);
  text("Now you should be ready!",891,215);
  text("Let's check what",891,260);
  text("missions you must complete",891,305);
  text("in order to finish the tutorial.",891,350);
}
