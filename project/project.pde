void setup(){
  size(600,600);
  PImage img =createImage(600,600, RGB);
  img.loadPixels();
  for(int i=0; i<img.pixels.length;i++){
  img.pixels[i]=0;
  }
img.updatePixels();
image(img,0,0);
textSize(128);
fill(255,255,255);
text("word", 0,200);
img.updatePixels();
  for(int i=0; i<img.pixels.length;i++){
  int r = (int)red(img.pixels[i]);
int g = (int)green(img.pixels[i]);
int b = (int)blue(img.pixels[i]);
if(g!=0)
print(r,g,b);
  }
}
