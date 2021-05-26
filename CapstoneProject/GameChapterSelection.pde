void GameChapterSelection(){
  //MagnificentMenuMusic.stop();
  background(0);
  imageMode(CENTER);
  image(GameChapterSelectionBackground,(width-137)/2, height/2+60);
  
  fill(#14004B,120);
  stroke(#0FD9FF);
  strokeWeight(4);
  rect((width-137)/2-640,60,1440,140,5);// top rectangle
  rect((width-137)/2-640,240,560,795,10);// chapter titles
  rect((width-137)/2-40,240,840,795,10);// chapter descriptions details
  
  fill(#0FD9FF);
  textAlign(CORNER,CORNER);
  textSize(70);
  text("CHAPTERS", (width-137)/2-600,165);
  
  
  fill(#14004B,120);// return Menu button
  ellipse(122,940,160,160);
  fill(#0FD9FF);
  noStroke();
  rect(105,925,60,30);
  triangle(67,940, 105,895, 105, 985);
  
  fill(0);
  stroke(0,255,255);
  strokeWeight(1);
  rect(280,270,460,80,5);
  rect(280,270+110,460,80,5);
  rect(280,270+110*2,460,80,5);
  rect(280,270+110*3,460,80,5);
  rect(280,270+110*4,460,80,5);
  rect(280,270+110*5,460,80,5);
  rect(280,270+110*6,460,80,5);
  
  fill(0,255,255);
  textAlign(CENTER,CENTER);
  textSize(40);
  text("Into Battle",510,310);// Main Missions
  text("Refusal",510,310+110);
  text("Survival",510,310+110*2);
  text("The Meeting",510,310+110*3);
  text("Recruiting The Team",510,310+110*4);
  text("First Mission",510,310+110*5);
  text("Lost For Words",510,310+110*6);
  //text("Reunion",510,310+100*6);
  //text("The Encounter",510,310+100*6);
  //text("Who Is This?",510,310+100*6);
  //text("A Tale Of Old",510,310+100*6);
  //text("The Lady Of The Lake",510,310+100*6);
  //text("A Call From The Past",510,310+100*6);
  //text("Decision",510,310+100*6);
  //text("Escape Gravity",510,310+100*6);
  //text("The Hard Stone Legion",510,310+100*6);
  //text("The Proposal",510,310+100*6);
  //text("Collaboration",510,310+100*6);
  //text("To Be Called A Friend",510,310+100*6);
  //text("The Dream Of Tomorrow",510,310+100*6);
  //text("Head Of The Snake",510,310+100*6);
  //text("Heart Of Blood",510,310+100*6);
  //text("Satan's Gate",510,310+100*6);
  //text("Collision Of Worlds",510,310+100*6);
  //text("Graduation",510,310+100*6);
  //text("St George And The Dragon",510,310+100*6);
  //text("Illusions",510,310+100*6);
  //text("Forgotten Legend",510,310+100*6);// 28
  
  
  
  
  
  
  
  //text("A New Dawn",510,310+100*6);
  //text("A Simpler Time",510,310+100*6);
  //text("Trial By Fire",510,310+100*6);
  //text("A Good Soldier",510,310+100*6);
  //text("Devils",510,310+100*6);
  //text("Accident",510,310+100*6);
  //text("A Deeper Dive",510,310+100*6);
  //text("What Is Happening",510,310+100*6);
  //text("Flame Of Justice",510,310+100*6);
  //text("Sins",510,310+100*6);
  //text("A Kind Heart",510,310+100*6);
  //text("Orders",510,310+100*6);
  //text("The Meaning To Fight",510,310+100*6);
  //text("Friends",510,310+100*6);
  //text("Breakout",510,310+100*6);
  //text("Wisdom Of The Ancient",510,310+100*6);
  //text("An Unfinished Story",510,310+100*6);
  //text("Brothers And Sisters",510,310+100*6);
  //text("The Sword In The Stone",510,310+100*6);
  //text("Edge Of Space",510,310+100*6);
  //text("The Guardians",510,310+100*6);
  //text("A Proposal",510,310+100*6);
  //text("Their Territories",510,310+100*6);
  //text("Agreement",510,310+100*6);
  //text("The Pit",510,310+100*6);
  //text("Forever Green",510,310+100*6);
  //text("Meteors",510,310+100*6);
  //text("Force Shield",510,310+100*6);
  //text("One Way Out",510,310+100*6);
  //text("Before The Storm",510,310+100*6);
  //text("Beyond The Starlight",510,310+100*6);// 30    //58
  
  
  
  //for (int i = 0; i < 7; i++){
  //  rect(280,270+110*i,460,80,5);
  //}



}
