void Intro(){ 
  fill(0,60);
  noStroke();
  rect(0, 0, width, height);  
  
  if (DamonCircle){
    fill(#FF9C1A,50);
    stroke(#FFD500);
    strokeWeight(3);
    ellipse(width/2-45-DamonMove+GreatWarMove,height/2, DamonCircleSize+DamonCircleSecondExpand, DamonCircleSize+DamonCircleSecondExpand);
  }
    
  if (AraxCircle){
    fill(#FF1AF0,40);
    stroke(#965BD6);
    strokeWeight(3);
    ellipse(width/2-45+AraxMove-GreatWarMove,height/2, AraxCircleSize+AraxCircleSecondExpand, AraxCircleSize+AraxCircleSecondExpand);
  }
    
  for (int i = 0; i < myIntroObjects.size(); i++){
    IntroObjects b = myIntroObjects.get(i);
    if (GalaxyFadeStart && !WhiteExplosionFadeBegin){
      b.act();
      b.show();
    }
  }
    
  for (int i = 0; i < myIntroObjectsPurple.size(); i++){
    IntroObjectsPurple p = myIntroObjectsPurple.get(i);
    if (GalaxyFadeStart && !WhiteExplosionFadeBegin){
      p.act();
      p.show();
    }
  }
  
  fill(255);
  noStroke();
  ellipse(width/2-45,height/2,WhiteExplosionSize,WhiteExplosionSize);
  
    
    
  if (StartBeginningAnimation){
    Agul.play();////////////////////////////////////////////////////////////
    
    Text();
    
    if (DamonYellowShow){
      DamonMoveDelay++;
      if (DamonMoveDelay >= 50){
        DamonMoveDelay = 50;
        DamonMove+=3;
        if (DamonMove >= 300){
          DamonMove = 300; 
          DamonCircle = true;
          DamonCircleSize+=4;
          if (DamonCircleSize >= 60){
            DamonCircleSize = 60;
          }
        }
      }
    }
    
    if (AraxPurpleShow){
      AraxMoveDelay++;
      if (AraxMoveDelay >= 50){
        AraxMoveDelay = 50;
        AraxMove+=3;
        if (AraxMove >= 300){
          AraxMove = 300;
          AraxCircle = true;
          AraxCircleSize+=4;
          if (AraxCircleSize >= 60){
            AraxCircleSize = 60;
          }
        }
      }
    }
    
    if (DamonCircleExpand){
      DamonCircleSecondExpand+=2;
      if (DamonCircleSecondExpand >= 80){
        DamonCircleSecondExpand = 80;
      }
    }
    
    if (AraxCircleExpand){
      AraxCircleSecondExpand+=2;
      if (AraxCircleSecondExpand >= 80){
        AraxCircleSecondExpand = 80;
      }
    }
    
    if (GreatWarBegin){
      GreatWarMove+=10;
      if (GreatWarMove >= 230){
        SpaceExplosionBeginning.play();
        Agul.stop();
        GreatWarMove = 230;
        WhiteExplosionSize+=100;
        if (WhiteExplosionSize >= 3000){
          WhiteExplosionSize = 3000;
          //for (int i = 0; i < 300; i++){
          //  myIntroObjects.remove(i);
          //  myIntroObjectsPurple.remove(i);
          //}
          WhiteExplosionFadeBegin = true;
          GameMode = Menu;
        }
      }
    }
  }
  else {
    fill(80);
    textSize(160);
    textAlign(CENTER,CENTER);
    text("Touch Screen",width/2-45,height/2);   
  }
  
  
  
}
//=====================================================================================================================================================

void Text(){
  fill(255);
  textSize(50);
  textAlign(CENTER,CENTER);
  TextTimer++;
  if (TextTimer > 15 && TextTimer <= 200){
    text("In the beginning, the Universe was empty",width/2-45,990);
  }
  else if (TextTimer > 200 && TextTimer <= 390){
    text("There were no stars, no planets, no lives.....",width/2-45,990);
  }
  else if (TextTimer > 390 && TextTimer <= 550){
    text("There was only Altan, messager of the Universe",width/2-45,990);
    GalaxyFadeStart = true;
  }
  else if (TextTimer > 550 && TextTimer <= 710){
    text("Its mission was to bring eternal life into this world",width/2-45,990);
  }
  else if (TextTimer > 710 && TextTimer <= 950){
    text("Overtime, a part of Altan believed in the possiblity of life",width/2-45,920);
    text("It seperated itself from Altan to become a new being",width/2-45,970);
    text("Damon, the Lightbringer",width/2-45,1020);
  }
  else if (TextTimer > 1180 && TextTimer <= 1280){
    text("The other part of Altan became Arax, the Eternal Darkness",width/2-45,990);
  }
  else if (TextTimer > 1480 && TextTimer <= 1720){
    fill(#F2CA00);
    text(": In an imperfect world where life must overcome",width/2-45,920);
    text("challenges and leave a better future for the next generation.",width/2-45,970);
    text("The undying heritage is passed from one generation to the next.",width/2-45,1020);
    DamonCircleExpand = true;
  }
  else if (TextTimer > 1720 && TextTimer <= 1800){
    fill(#F2CA00);
    text(": That is eternal life",width/2-45,990);
  }
  else if (TextTimer > 1800 && TextTimer <= 2040){
    fill(#DE62FA);
    text(": Because death is inevitable, life will live in fear and horror.",width/2-45,920);
    text("These emotions prevent a joyful life, so by denying the existence",width/2-45,970);
    text("of life, there will be no suffering.",width/2-45,1020);
    AraxCircleExpand = true;
  }
  else if (TextTimer > 2040 && TextTimer <= 2120){
    fill(#DE62FA);
    text(": That is eternal life",width/2-45,990);
  }
  else if (TextTimer > 2140){
    fill(255);
    text("Eventually, both can no longer stand each other's presence",width/2-45,960);
    text("A great battle took place in the center of the void",width/2-45,1010);
  }

  if (TextTimer > 970){
    DamonYellowShow = true;
  }
  if (TextTimer > 1280){
    AraxPurpleShow = true;
  }
  
  if (TextTimer > 2280){
    GreatWarBegin = true;
  }





}
