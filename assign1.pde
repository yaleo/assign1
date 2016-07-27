/* please implement your assign1 code in this file. */
PImage img,imgBg,imgHp,imgTr,imgEn;
int trX,trY,hpWidth,enSpeedx,enY;
void setup () {
  size(640,480) ;// must use this size.
  hpWidth=floor(random(10,200));
  img=loadImage("img/fighter.png");
  imgBg=loadImage("img/bg1.png");
  imgHp=loadImage("img/hp.png");
  imgTr=loadImage("img/treasure.png");
  imgEn=loadImage("img/enemy.png");
  trX=floor(random(1,500));
  trY=floor(random(60,400));
  enY=floor(random(30,400));// your code
}

void draw() {
  image(imgBg,0,0);
  image(img,540,240);
  fill(255,0,0);
  rect(25,20,hpWidth,20);
  image(imgHp,20,20);
  image(imgTr,trX,trY);
  enSpeedx+=3;
  enSpeedx%=640;
  image(imgEn,enSpeedx,enY);// your code
}
