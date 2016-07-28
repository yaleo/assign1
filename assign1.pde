/* please implement your assign1 code in this file. */
PImage fighter,imgBg1,imgBg2,imgHp,imgTr,imgEn;
int trX,trY,hpWidth,enSpeedx,enY,bg1X,bg2X;

void setup () {
  size(640,480) ;// must use this size.
  hpWidth=floor(random(10,200));
  fighter=loadImage("img/fighter.png");
  imgBg1=loadImage("img/bg1.png");
  imgBg2=loadImage("img/bg2.png");
  imgHp=loadImage("img/hp.png");
  imgTr=loadImage("img/treasure.png");
  imgEn=loadImage("img/enemy.png");
  trX=floor(random(1,500));
  trY=floor(random(60,400));
  enY=floor(random(30,400));
  bg1X=0;
  bg2X=-640;// your code
}

void draw() {
  
  image(imgBg1,bg1X,0);
  image(imgBg2,bg2X,0);
   if (bg1X>width){
    bg1X=-640;
    }else{
    bg1X+=2;
    }
    if(bg2X>width){
    bg2X=-640;
    }else{
    bg2X+=2;
    }
  image(fighter,540,240);
  fill(255,0,0);
  rect(25,20,hpWidth,20);
  
  image(imgHp,20,20);
  
  image(imgTr,trX,trY);
  enSpeedx+=3;
  enSpeedx%=640;
  image(imgEn,enSpeedx,enY); // your code  
}
