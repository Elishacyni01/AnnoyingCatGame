PImage sky, cat0, cat1;
PImage [] sbImages;
PImage strawberry0, strawberry1, strawberry2, strawberry3, strawberry4, strawberry5, strawberry6, strawberry7;

final int GAME_START = 0, GAME_RUN = 1, GAME_OVER = 2, GAME_WIN = 3;
int gameState = 1;

final int BLOCK_SIZE = 80;

float frame, offset, speed;

Cat cat;
Strawberry[] strawberries;

void setup() {
  size(640, 480, P2D);
  frameRate(60);
  sky = loadImage("img/sky.png");
  cat0 = loadImage("img/cat0.png");
  cat1 = loadImage("img/cat1.png");
  
  // Load PImage[] strawberries
  sbImages = new PImage[8];
  for(int i = 0; i < sbImages.length; i++){
    sbImages[i] = loadImage("img/strawberries/strawberry" + i + ".png");
  }
  
  
  initgame();
}

void initgame(){
  // Initialize cat
  cat = new Cat();
  
  // Initialize strawberry
  strawberries = new Strawberry[100];
  for(int i = 0; i < 5; i++){
    float newX = 300 + i * BLOCK_SIZE;
    float newY = 220;
    strawberries[i] = new Strawberry(newX, newY);
  }
  
  // Initialize frame & offset & speed
  frame = 0;
  offset = 0;
  speed = 2;
}

void draw() {
  
  switch (gameState) {
    case GAME_START:
    break;
    
    case GAME_RUN:
      // Background
      for(int i = 0; i < 30; i++){
        image(sky, i * width - offset, 0, width, height);
      }
      offset = frame * speed;
      
      // Cat
      cat.update();
      
      // Strawberries
      
      for(Strawberry i : strawberries){
        if(i == null)continue;
        i.display();
        i.update();
        //i.checkCollision(cat);
      }
      
      // Frame
      frame++;
      println(frame);
    break;
    
    case GAME_OVER:
    break;
    
    case GAME_WIN:
    break;
  }
}
