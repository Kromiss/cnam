class Bulle { 
  PFont f;
  float posX;
  float posY;
  int taille;
  float tailleCercle;
  int time;
  int i = 0;
  Bulle (float posX, float posY, int taille, int time) {  
    this.posX = posX;
    this.posY = posY;
    this.taille = taille;
    this.tailleCercle = taille*2;
    this.time = time;
  } 

  void update() {  
    if (i == 30 || i == 59) time--;
    if (time > 0) {
      fill(255,255,255, 250);
      stroke(255,255,255, 250);
      ellipse(posX, posY, taille, taille);
      noFill();
      stroke(255);
      ellipse(posX, posY, tailleCercle-5, tailleCercle-5);
      f = createFont("Arial", 16, true); 
      textFont(f, 25); 
      textAlign(CENTER);
      fill(0);
      text(time, posX, posY+10);
    }
    tailleCercle = tailleCercle - 0.6;
    i = (i == 59)?0:i+1;
  }

  boolean finished() {
    return (time > 0)?false:true;
  }
  
  boolean isHit(float x, float y){
    return (posX - x<50 && posY-y <50)?true:false;
  }
} 
