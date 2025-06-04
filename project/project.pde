  PImage img;

    PGraphics img2;

void setup(){
  size(600,600);
  img=loadImage("cat.png");
  img.resize(600,600);
img2 = createGraphics(600, 600);

img2.beginDraw();
img2.background(255);
textSize(128);
img2.text("helpmee", 0,200);
img2.endDraw();



}


void draw(){
//img.loadPixels();
//   text("word", 0,200);
// img.set(mouseX,mouseY,255);
  //  img.updatePixels();

 // if (mousePressed == true) {
  //  writeMessage(mouseX,mouseY);
    
 // }

      
      image(img2,0,0);
     // image(img,0,0);
}

void keyPressed(){
if(key==ENTER){
  print("test");
  changePixels();
  img.updatePixels();
  img.save("test.png");
}

}

void mouseDragged() {
 writeMessage(pmouseX, pmouseY);
}


void writeMessage(int x, int y){

img2.beginDraw();
stroke(255);
//img2.line(mouseX, mouseY, pmouseX, pmouseY);

int radius=5;
for (int i = -radius; i <= radius; i++) {
    for (int j = -radius; j <= radius; j++) {
      int tempX=x+i;
      int tempY=y+j;
img2.set(tempX,tempY,color(0));
    }
}
img2.endDraw();
//image(img2,0,0);
//img2.updatePixels();
}

void changePixels(){
 img.loadPixels();
 img2.loadPixels();
  for(int i=0; i<img2.pixels.length;i++){
  if(img2.pixels[i]==color(0,0,0)){
    print("asdfas");
  img.pixels[i]=255;
}
  }
  img.updatePixels();
}
