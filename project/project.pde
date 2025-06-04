  PImage img =createImage(600,600, RGB);
    PGraphics img2;

void setup(){
  size(1000,600);
  
img2 = createGraphics(200, 200);

img2.beginDraw();
textSize(128);
img2.text("helpmee", 0,200);
img2.endDraw();



}


void draw(){
//img.loadPixels();
//   text("word", 0,200);
// img.set(mouseX,mouseY,255);
  //  img.updatePixels();

      stroke(255);
  if (mousePressed == true) {
    changePixelColor();
    img2.save("test.png");
  }

      image(img2,0,0);
}



void changePixelColor(){

img2.beginDraw();
textSize(128);
stroke(255);
img2.line(mouseX, mouseY, pmouseX, pmouseY);
img2.endDraw();
//image(img2,0,0);
//img2.updatePixels();


}
