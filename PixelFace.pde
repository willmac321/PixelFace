private Smiley smiles;
private OpenMouth open;
public int size;
public boolean bOptions;


public void setup(){
  
  size(600,600);
  size=width/10;
  bOptions=true;
  smiles=new Smiley();
  open=new OpenMouth();
}

public void draw(){
  background(51);
  
  if(bOptions){
    smiles.update();
    smiles.show();
    bOptions=!smiles.getWink();
  }
  else
    open.update();
    open.show();
  }
