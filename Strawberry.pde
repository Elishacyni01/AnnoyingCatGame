class Strawberry {
  boolean isAlive;
  float x, y;
  float w = 0.5 * BLOCK_SIZE;
  float h = 0.5 * BLOCK_SIZE;
  
  int boomTimer = 0;
  int range = 3;
  int boomDuration = 7 * range;
  
  void display(){
    if(isAlive == true){
      image(sbImages[0], x, y, w, h);
    }
  }
  
  void update(){
    x -= speed;
    
    // EXPLOSION
    if(boomTimer > 0){
      if(boomTimer <= 7 * range){
        if(boomTimer <= 6 * range){
          if(boomTimer <= 5 * range){
            if(boomTimer <= 4 * range){
              if(boomTimer <= 3 * range){
                if(boomTimer <= 2 * range){
                  if(boomTimer <= 1 * range){
                    image(sbImages[7], x -20, y -20, w * 2, h * 2);
                  }else{
                    image(sbImages[6], x -20, y -20, w * 2, h * 2);
                  }
                }else{
                  image(sbImages[5], x -20, y -20, w * 2, h * 2);
                }
              }else{
                image(sbImages[4], x -20, y -20, w * 2, h * 2);
              }
            }else{
              image(sbImages[3], x -20, y -20, w * 2, h * 2);
            }
          }else{
            image(sbImages[2], x -20, y -20, w * 2, h * 2);
          }
        }else{
          image(sbImages[1], x -20, y -20, w * 2, h * 2);
        }
      }
      boomTimer --;
    }
  }
  
  void boom(){
    // Set the boomTimer and start to count down
    boomTimer = boomDuration;
  }
  
  boolean checkCollision(Cat cat){

    if(isHit(x, y, w, h, cat.x, cat.y + 20, cat.w, cat.h - 40)){
      
      
      isAlive = false;
      
      return true;
    }else{
      return false;
    }
  }
  
  // Constructor
  Strawberry(float x, float y){
    isAlive = true;
    this.x = x;
    this.y = y;
  }
}
