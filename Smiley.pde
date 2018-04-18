
public class Smiley{
  
  private PVector leftEye;
  private PVector rightEye;
  private int BEZEL=7;
  private PVector mouth;
  private Boolean wink;
  private int count;
  private int testValue;
  private int time;
  
 public Smiley(){
     wink=false;
     count=0;
     leftEye=new PVector(width/(4)-size/2,height/5);
     rightEye=new PVector(width*3/(4)-size/2,height/5);
     testValue=ceil(random(60));
     time=second();
 }
 
 
 public void update(){
     
    if(second()==testValue || second()==time+4){//ceil(random(60))){
       wink=!wink; 
       testValue=ceil(random(60));   
    }
    if(wink){
      count++;
    }
    else {
      time=second();
    }
   
   } 
 
 public void eyesOpen(){
   
   rect(rightEye.x,rightEye.y,size,size,BEZEL);
   rect(leftEye.x,leftEye.y,size,size,BEZEL);
   
   for(int i=0;i<(rightEye.x-size)/size;i++){
     int yOff=2;
      if(i==0 || i==(rightEye.x/size-2)){
        yOff=1;
      }
      rect(leftEye.x+size*i,leftEye.y+size*2+size*yOff,size,size,BEZEL); 
      yOff=1;
   } 
 }
 
 
 public void winkLeftEye(){
     rect(leftEye.x,leftEye.y+size/2,size,size/10,BEZEL);
     rect(rightEye.x,rightEye.y,size,size,BEZEL);   
     for(int i=0;i<(rightEye.x-size)/size;i++){
       int yOff=2;
        if(i==0 || i==(rightEye.x/size-2)){
          yOff=1;
        }
        rect(leftEye.x+size*i,leftEye.y+size*2+size*yOff,size,size,BEZEL); 
     } 
   } 
   
 public void show(){
      if(wink){
        winkLeftEye();
      }
      else{
       eyesOpen();  
      } //<>//
 }
 
 public boolean getWink(){
   return wink;
 }
}
