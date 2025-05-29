  PImage img =createImage(600,600, RGB);
    PGraphics img2;

void setup(){
  size(600,600);

  img.loadPixels();
  for(int i=0; i<img.pixels.length;i++){
  img.pixels[i]=0;
  }
  print("SDF");
img.updatePixels();
img2 = createGraphics(200, 200);
image(img,0,0);
img2.beginDraw();
textSize(128);
fill(255,255,255);
text("words", 0,100);
img2.endDraw();
img2.loadPixels();
img=img2.get();
img.updatePixels();

}


void draw(){
   img.loadPixels();
//   text("word", 0,200);
// img.set(mouseX,mouseY,255);
  //  img.updatePixels();
    image(img,0,0);
}

void print(){
 for(int i=0; i<img.pixels.length;i++){
  int r = (int)red(img.pixels[i]);
int g = (int)green(img.pixels[i]);
int b = (int)blue(img.pixels[i]);
if(g!=0)
print(r,g,b);
  }
}
