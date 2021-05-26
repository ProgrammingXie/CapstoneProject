void GamePauseButtonOptions(){
  //fill(#ED8F00,150);
  //stroke(#DB9428);
  fill(30,160);
  stroke(#F7F000);
  strokeWeight(3);
  ellipse(1680,95,120,120);
  
  if (!GamePause){
    fill(50);
    strokeWeight(1);
    rect(1657,60,13,70,3);
    rect(1690,60,13,70,3);
  }
  else {
    fill(30,160);
    stroke(#F7F000);
    triangle(1662,60, 1662,130, 1708,95);
    rect((width-137)/2 - 300,height/2 - 200, 600,120,2);
    rect((width-137)/2 - 300,height/2, 600,120,2);
    fill(#F7F000);
    textAlign(CENTER,CENTER);
    textSize(50);
    text("RETURN  TO  MENU ", (width-137)/2,height/2 - 135 );
    text("RESUME", (width-137)/2,height/2 + 65 );
    
  }
  
}
//===================================================================================================================================================

void GamePlayScreenButtons(){

  if (ControlStickShow){
    fill(30,160);// 200,100
    stroke(#F7F000);// 255
    strokeWeight(3);
    ellipse(300,800,360,360);// Movement Key Base;
    fill(50);// 200,100
    stroke(#F7F000);// 180,200
    strokeWeight(5);
    if (ControlStickShow) ellipse(300+ControlStickPosition.x, 800+ControlStickPosition.y, 100,100);// Movement Stick  260,840
  }
  
  if (AttackButtonShow){
    fill(30,160);// 200,100
    stroke(#F7F000);// 255
    strokeWeight(3);  
    ellipse(1600,900,260,260);// Attack Key
    
    strokeWeight(5);
    for (int i = 0; i < 4; i++){
      pushMatrix();
        translate(1600,900);
        rotate(radians(90*i));
        line(25,-65, 25,-25);// original section top right
        line(25,-25, 65,-25);
      popMatrix();
    }
    
  }
  
  if (HealthBar){
    fill(30,160);// 200,100
    stroke(#F7F000);// 255
    strokeWeight(3);
    rect((width-137)/2 - 400, -10, 800,90);
    fill(#F7F000);
    textAlign(CORNER);
    textSize(50);
    text("Hp:", 504,54);      
    for (int i = 0; i < TutorialHp; i++){// Actual Hp
      fill(#C90028);
      noStroke();
      rect(592+20*i,20,20,40);
    }
    for (int i = 0; i < TutorialArmour; i++){// Armour
      fill(#FFA81A);
      noStroke();
      rect(592+20*i,20,20,40);
    }
    for (int i = 0; i < 34; i++){// healthbar outline
      fill(0,0,0,0);
      stroke(#F7F000);
      strokeWeight(2);
      rect(592+20*i,20,20,40);
    }
  }
  
  if (MissionBar){
    fill(30,160);// 200,100
    stroke(#F7F000);// 255
    strokeWeight(3);
    rect(190,-10+MissionBarTranslateY,280,530);
    //ellipse(330,535+MissionBarTranslateY,100,100);// Show clickable area
    fill(#F7F000);
    triangle(275,520+MissionBarTranslateY, 385,520+MissionBarTranslateY, 330,560+MissionBarTranslateY);// middle 330
    
    fill(#F7F000);
    textSize(40);
    textAlign(CENTER);
    text("Mission:",333,54+MissionBarTranslateY);
    if (TutorialMissionShow){
      textAlign(CORNER);
      textSize(26);
      text("Complete tutorial", 206,110+MissionBarTranslateY);  
      text("Walk around", 206, 160+MissionBarTranslateY);
      
      stroke(#F7F000);
      strokeWeight(1);
      fill(TutorialCompletedFill);
      rect(420,86+MissionBarTranslateY,30,30,2);// check box
      fill(WalkAround);
      rect(420,136+MissionBarTranslateY,30,30,2); 
      
      if (WalkAroundTimer == 300){
        WalkAround = #0FBF54;
      }
      else {
        WalkAround = 60;
      }
      
    }
    
  }
  
  
  if (!GamePause){
    if (ControlStickShow){// control stick movement 
      if (mousePressed && AnimationFinished){// Control Stick
        if (dist(300,800, mouseX,mouseY) < 50 && !MoveStickActivate){
          MoveStickActivate = true;
        }
        if (dist(300,800, mouseX,mouseY) < 190 && MoveStickActivate){
          ControlStickPosition.x = mouseX - 340;
          ControlStickPosition.y = mouseY - 780;
          WalkAroundTimer++;
          if (WalkAroundTimer >= 300 && TutorialMissionShow) WalkAroundTimer = 300;
          if (mouseX > 300){// right circle
            MovementX = map(mouseX,300,480,0,40);
            FaceRight = true;
            MovingRight = true;
            MovingLeft = false;
          }
          else if (mouseX < 300){
            MovementX = map(mouseX,120,300,40,0);
            FaceRight = false;
            MovingLeft = true;
            MovingRight = false;
          }
          if (mouseY > 800){
            MovementY = map(mouseY,800,980,0,40);
            MovingDown = true;
            MovingUp = false;
          }
          else if (mouseY < 800){
            MovementY = map(mouseY,620,800,40,0);
            MovingUp = true;
            MovingDown = false;
          }
        }  
      }
      else {
        ControlStickPosition.set(0,0);
        MovementX = 0;
        MovementY = 0;
        MoveStickActivate = false;
      }
    }
    
    if (MissionBar && AnimationFinished){ 
      if (MissionBarTranslateY == -518){// closed
        MissionBarMotion = 0;
      }
      else if (MissionBarTranslateY == 0){// extended
        MissionBarMotion = 1;
      }
      else {
        MissionBarMotion = 2;// moving
      }
    }
    if (!GamePause){
      if (MissionBarMoveDown){
        MissionBarTranslateY+=20;
        if (MissionBarTranslateY >= 0) MissionBarTranslateY = 0;
      }
      else {
        MissionBarTranslateY-=20;
        if (MissionBarTranslateY <= -518) MissionBarTranslateY = -518;
      }
    }
    
    
    
  }
}
//===================================================================================================================================================
