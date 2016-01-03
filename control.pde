void mouse_control()
{
  textFont(myFont);  
  textSize(14*sf);
  fill(#9B9999);
  rect(300, 600, 40, 20);
  noFill();
  textAlign(LEFT, TOP);
  fill(0);
  text("折线图", 300, 620);
  fill(#3ECE55);
  rect(380, 600, 40, 20);
  noFill();
  fill(0);
  text("雷达图", 380, 620);
  mousePressed();
}



void mousePressed()
{
  if (mouseButton == LEFT) 
  {
    if (mouseX>300&&mouseX<340&&mouseY>600&&mouseY<620)
    {
      lei=false;
    }
    if (mouseX>380&&mouseX<420&&mouseY>600&&mouseY<620)
    {
      lei=true;
    }
  }
}