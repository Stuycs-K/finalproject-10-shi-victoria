# LSB Stenography in Processing

### Project Description
The goal of this project was too create a program that could hide messages in the least signifigant bits of pixel values in images.
Unlike the image stenography lab we did for class before, this program can create messages visbile to the naked eye when viewing through StegSolve and is much more interactive.

### How it works
- First the user must draw their message
- Then the original image gets compared to the mask and the corresponding pixel changes based on the type of encoding
- The encoded image then gets saved as a png and can be run through StegSolve to see the results

### Types of Encoding
- Red Plane 0
- Green Plane 0
- Blue Plane 0
  
These are all types of LSB encoding. In StegSolve pixels with a 0th bit in the corresponding color channel with a value of one show up as white while those with a zero show up as black. The tiny difffernces in pixel value are not visible to the human eye which makes this method good at hiding messages.

### Controls
The UP and DOWN keys can be used to toggle between the different encoding modes while pressing ENTER results in everything drawn on the screen being encoded into the original picture.

### Demonstration

