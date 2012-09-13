
void setup(){
  size(500, 500);
  background(255);
  smooth();
  
  int rSize = 20;         //Size of rect
  int rSpace = 10;        //Spacing between rect
  int rIncrease = 7;      //Increase in spacing
  
  int eRadius = 80;       //Radius of Ice Cream
  
  strokeWeight(5);
  stroke(0);
  
  //ICE CREAM
  pushMatrix();
  for (int i=0; i< 4; i++){
    if (i > 2) { 
      eRadius=190; 
      translate(-160,-44);
    }
     ellipse((width/2)+(i*80)-80, ((height/2)-26), eRadius, eRadius);
  }
  popMatrix();
  
  // triangle cuts off bottom of ellipse
  stroke(255);
  //stroke(0); // use this to see triangle
  triangle((width/2)-90, (height/2)-10, width/2, (height/2)+100, (width/2)+90, (height/2)-10);
  
  stroke(0);
  translate((width/2)+110, height/2);
  rotate((3*PI)/4);  //rotates rectangles
  
  
  for (int i = 0; i < 6; i++) {
    for(int j = 0; j < i; j++){
      rect(i*(rSize+rIncrease), j*(rSize+rIncrease), rSize, rSize); 
    }
  }

}


