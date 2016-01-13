//Detector class
class Detector  {
  
  float x1;      //Tracks x value of detector
  float y1;      //Tracks y value of detector
  
  
  //constructor for detector
  Detector(float x_, float y_)  {
  
    x1 = x_;
    y1 = y_;
  
  }
  
  void update()  {
    
   fill(0);                      //Detector is a black circle)  
   ellipse(x1, y1, -25, -25);
    
  }
  
  float getY()  {  //Accesor (gets the Y value of detector)
   return y1;
  }
  
  float getX()  {  //Accesor (gets X value of detector)
   return x1; 
  }
  
  
    
   //void setY(float newY_) {
   //y1 = newY_;
  //}
  
  
   // void setX(float newX_) {
   // x1 = newX_;
  //}
}