void Menu(){
  MagnificentMenuMusic.play();
  //CalmingPiano.play();
  //MagnificentMenuMusic.loop();
  CalmingPiano.stop();
  
  
  background(0);
  pushMatrix();
    translate(width/2-45,height/2);
    rotate(radians(GalaxyBackgroundRotate));
    imageMode(CENTER);
    image(GalaxyBackground,0,0,2880,2880);// 2880,2400
  popMatrix();
    
  for (int x = -1; x < 2; x++) {
    fill(#9BFFEC);
    textSize(125);
    textAlign(CENTER,CENTER);
    text("Beyond the Starlight",width/2-45+x,200);// title 
    text("Beyond the Starlight",width/2-45,200+x);
  }
  fill(0);
  textSize(124);
  textAlign(CENTER,CENTER);
  text("Beyond the Starlight",width/2-45,200);
   
  pushMatrix();
    translate(195,100);
    PlayButton();
    TutorialButton();
    SettingButton();
  popMatrix();
 
  //if (mouseX>480+195 & mouseX<960+195 && mouseY>376 && mouseY<524){
  //  PlayBackground = 210;
  //}
  //else {
  //  PlayBackground = 125;
  //}
    
  //if (mouseX>480+195 & mouseX<960+195 && mouseY>576 && mouseY<724){
  //  TutorialBackground = 210;
  //}
  //else {
  //  TutorialBackground = 125;
  //}
    
  //if (mouseX>480+195 & mouseX<960+195 && mouseY>776 && mouseY<924){
  //  SettingBackground = 210;
  //}
  //else {
  //  SettingBackground = 125;
  //}
    
   
    
    
    
    
  fill(255,255,255,WhiteExplosionFade);
  noStroke();
  rect(0,0,width,height);
  
  //if (GalaxyForwardRotate){
    //GalaxyBackgroundRotate = GalaxyBackgroundRotate + 0.1;
  //  if (GalaxyBackgroundRotate >= 25){
  //    GalaxyForwardRotate = false;
  //  }
  //}
  //else {
  //  GalaxyBackgroundRotate = GalaxyBackgroundRotate - 0.08;
  //  if (GalaxyBackgroundRotate <= -25){
  //    GalaxyForwardRotate = true;
  //  }
  //}

  if (WhiteExplosionFadeBegin){
    WhiteExplosionFade-=10;
    if (WhiteExplosionFade <= 0){
      WhiteExplosionFade = 0;
      SpaceExplosionBeginning.stop();
    }
  }



}
//=====================================================================================================================================================

void PlayButton(){
  fill(0,119,137,PlayBackground);
  noStroke();
  beginShape();
  vertex(514,286);
  vertex(950,286);
  vertex(950,390);
  vertex(926,414);
  vertex(490,414);
  vertex(490,310);
  endShape();
  
  noFill();
  stroke(#00DBDE);
  strokeWeight(6);
  beginShape();
  vertex(504,276);
  vertex(960,276);
  vertex(960,400);
  vertex(936,424);
  vertex(480,424);
  vertex(480,300);
  endShape(CLOSE);
  
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("Play Game",width/2-45-195,370);
}
//=====================================================================================================================================================

void TutorialButton(){
  fill(0,119,137,TutorialBackground);
  noStroke();
  beginShape();
  vertex(514,486);
  vertex(950,486);
  vertex(950,590);
  vertex(926,614);
  vertex(490,614);
  vertex(490,510);
  endShape();
  
  noFill();
  stroke(#00DBDE);
  strokeWeight(6);
  beginShape();
  vertex(504,476);
  vertex(960,476);
  vertex(960,600);
  vertex(936,624);
  vertex(480,624);
  vertex(480,500);
  endShape(CLOSE);
  
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("Tutorial",width/2-45-195,570);
}
//=====================================================================================================================================================

void SettingButton(){
  fill(0,119,137,SettingBackground);
  noStroke();
  beginShape();
  vertex(514,686);
  vertex(950,686);
  vertex(950,790);
  vertex(926,814);
  vertex(490,814);
  vertex(490,710);
  endShape();
  
  noFill();
  stroke(#00DBDE);
  strokeWeight(6);
  beginShape();
  vertex(504,676);
  vertex(960,676);
  vertex(960,800);
  vertex(936,824);
  vertex(480,824);
  vertex(480,700);
  endShape(CLOSE);
  
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("Setting",width/2-45-195,770);
}
