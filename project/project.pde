 final static int DRAW = 0;
final static int RED0 = 1;
final static int BLUE0= 3;
final static int GREEN0= 2;
String[] modes = {"DRAW", "RED 0", "GREEN 0", "BLUE 0"};
  PImage img;
  PImage img0;
    PGraphics img2;
boolean image= false;
    
int MODE=DRAW;
//you draw onto img2 and when you press enter what you draw changes the LSB of the orginal image
void settings() {
  img = loadImage("cat.png");
  size(img.width, img.height);  // dynamically set canvas size
}

void fileSelected(File selection) {
  if (selection == null) {
    println("Image not selected");
  } else {
    img=loadImage(selection.getAbsolutePath());
    img0=loadImage(selection.getAbsolutePath());
    println("User selected " + selection.getAbsolutePath());
    if(img==null){
    println("Couldn't load image");
  exit();}
  }
}
void setup(){
selectInput("Select an image to hide data in:", "fileSelected");
  //img0=loadImage("cat.png");

img2 = createGraphics(img.width, img.height);

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

fill(0);
textSize(20);
text(modes[MODE],img2.width-100,img2.height-20);

     // image(img,0,0);
}

void keyPressed(){
if(key==ENTER){
  println("Message encoded in "+ modes[MODE]+" to test.png");
  changePixels();
  img.updatePixels();
  img.save("test.png");
}
if(keyCode==UP){
  MODE++;
}
if(keyCode==DOWN){
  MODE--;
}
if(MODE<0)
MODE=3;
MODE%=4;


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
    if(MODE==DRAW){
  img.pixels[i]=255;
    }
  if(MODE==RED0){
     int r = (int)red(img0.pixels[i]);
        int g = (int)green(img0.pixels[i]);
        int b = (int)blue(img0.pixels[i]);
        r=r|1;
        img.pixels[i]=color(r,g,b);
  }
    if(MODE==BLUE0){
     int r = (int)red(img0.pixels[i]);
        int g = (int)green(img0.pixels[i]);
        int b = (int)blue(img0.pixels[i]);
        b=b|1;
        img.pixels[i]=color(r,g,b);
  }
    if(MODE==GREEN0){
     int r = (int)red(img0.pixels[i]);
        int g = (int)green(img0.pixels[i]);
        int b = (int)blue(img0.pixels[i]);
        g=g|1;
        img.pixels[i]=color(r,g,b);
  }
}
  }
  img.updatePixels();
}
