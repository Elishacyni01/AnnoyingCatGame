class Strawberry {
  boolean isAlive;
  float x, y;
  float w = 0.5 * BLOCK_SIZE;
  float h = 0.5 * BLOCK_SIZE;
  
  void display(){
    if(isAlive == true){
      image(sbImages[0], x, y, w, h);
    }
  }
  
  void update(){
    x -= speed;
  }
  
  // Constructor
  Strawberry(float x, float y){
    isAlive = true;
    this.x = x;
    this.y = y;
  }
}
