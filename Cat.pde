class Cat {
  float x, y;
  float w = 100, h = 100;
  final float PLAYER_INIT_X = 40;
  final float PLAYER_INIT_Y = 200;
  
  int health = 2;
  final int PLAYER_MAX_HEALTH = 5;
  
  void update(){
    PImage catDisplay = cat0;
    // Movement
    if(mouseY > y + 100){
      y += 5;
      catDisplay = cat1;
    }
    if(mouseY < y){
      y -= 5;
    }
    
    
    
    
    image(catDisplay, x, y, w, h);
  }
  
  Cat(){
    health = 2;
    x = PLAYER_INIT_X;
    y = PLAYER_INIT_Y;
  }
}
