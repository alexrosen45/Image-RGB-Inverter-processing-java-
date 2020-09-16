PImage butterflyImage;

void setup() {
  size(300, 250);
  butterflyImage= loadImage("butterfly-2.jpg");
  butterflyImage.resize(width, height);
  
  for(int y = 0; y < butterflyImage.height; y++){
   for(int x = 0; x < butterflyImage.width; x++){
     color in = butterflyImage.get(x, y);
     color out = color(255-red(in), 255-green(in), 255-blue(in));
     butterflyImage.set(x, y, out);
   }
  }
  
}

void draw() {
  image(butterflyImage, 0, 0);
}
