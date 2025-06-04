# Dev Log:

This document must be updated daily every time you finish a work session.

## Victoria Shi

### 2025-5-15 - Basic Research and Logistics
Finalized project ideas and updated repo (20 min). Did research on how StegSolve works and what it reveals
### 2025-5-17 - More Research
Fleshed out how a string could potentially be hidden in the LSB of a img. First draw the string on a blank canvas the same size as the img. Then compare each pixel in the img to the one with the string and change the bit.
### 2025-5-19 - Started Processing
Created processing file and started on how to change pixel colors in shape of image
### 2025-5-20 More Processing
Tried drawing text onto image. Pixel color does not change though. Tried to change pixels while drawing, apparently not possible in processing?
### 2025-5-29 PGraphics
Started using Pgraphics and text() to try to change pixel color of a image using get(). Does work although something is weird about the font size. 
### 2025-6-3 More PGraphics
Decided not to use text since there would be problems with sizing the text to fit the image and decided to make the message drawable. Realized that line() does not change every pixel that it appears to and so made a custom draw function with mouse location. 
### 2025-6-3 LSB 
Now that draw works, instead of changing the pixel color to another color, just change one the LSB's. Created the different modes and fixed sizing issue. Made it so that user has to choose which image to encode. 
