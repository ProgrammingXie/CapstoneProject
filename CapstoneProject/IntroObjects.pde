class IntroObjects{
  
  //PVector Center;
  //PVector Radius;
  PVector Position;
  PVector Velocity;
  PVector Direction;
  int Size;
  float Alpha;
  float AlphaFade;
  //int RandomPlace;
  //int ColourOptions;
  color C1;
  color C2;
  color C3;
  color C4;
  
  IntroObjects(){
    //Center = new PVector(width/2-45,height/2);
    //Radius = new PVector (200,0);
    //Radius.rotate(random(0,TWO_PI));
    Position = new PVector(width/2-45,height/2);
    Velocity = new PVector (1,0);
    Velocity.setMag(random(0.001,3));    
    Velocity.rotate(random(0,TWO_PI));
    
    Direction = new PVector (1,1);
    Direction.rotate(random(0,TWO_PI));
    
    Alpha = 255;
    AlphaFade = random(0.2,2);
    Size = (int) random(1,10);
    C1 = (int) random(0,200);
    C2 = (int) random(0,200);
    C3 = (int) random(0,200);
    C4 = (int) random(100,255);
  }
  //========================================================
  
  void act(){
    Position.add(Velocity);
    //Velocity.add(Direction);
    //if (Position.x == width/2-45 || Position.y == height/2){
    //  Radius = new PVector (100,0);
    //  Radius.rotate(random(0,TWO_PI));
    //  Position = new PVector(Center.x+Radius.x, Center.y+Radius.y);
      
    //}
    
    Direction.rotate(radians(random(40,140)));
    //Direction.rotate(PI);
    
    Alpha = Alpha - AlphaFade;
    if (Alpha <= 0){
      Alpha = 255;
      Position = new PVector(width/2-45,height/2);
    }
    
  }
  //========================================================
  
  void show(){
    pushMatrix();
      if (DamonYellowShow){
        fill(255,C4,0,Alpha);
      }
      else {
        fill(C1,C2,C3,Alpha);
      }
      translate(Position.x - DamonMove + GreatWarMove, Position.y);
      //rotate(Direction.heading());
      noStroke();
      ellipse(0,0,Size,Size);
    
    popMatrix();
    

//      fill(255,0,0);
//      ellipse(Center.x,Center.y,40,40);
    
  }








}
