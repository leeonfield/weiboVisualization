void drawWeiboAmount() {
  if (mouseX>2*em&&mouseX<370*3+2*em) {
    int x=(mouseX-2*em)/3;
    fill(52, 152, 219);
    text("Weibo: "+amount1[x], mouseX-35, 525);
    text("Time:4."+x/96+" "+(x%96)/4+":"+((x%96)%4)*15,mouseX-50,540);
    noFill();
    stroke(153);
    line(mouseX, 500, mouseX, 500-amount1[x]);
  }
}

void drawKterror() {
  for (int i=1; i<370; i++) {
    stroke(0, 0, 0);
    line((i-1)*3+2*em, 500-amount1[i-1], (i)*3+2*em, 500-amount1[i]);
  }
}

void drawgroup() {
  noStroke();
  for (int i=0; i<370; i++) {
    if (flag[0]>0&&group1[i]>0) {
      fill(46, 204, 113, 120);
      ellipse(i*3+2*em, 500-amount1[i], group1[i]*arg[0], group1[i]*arg[0]);
    }
    if (flag[1]>0&&group2[i]>0) {
      fill(241, 196, 15, 200);
      ellipse(i*3+2*em, 500-amount1[i], group2[i]*arg[1], group2[i]*arg[1]);
    }
    if (flag[2]>0&&group3[i]>0) {
      fill(142, 68, 173, 210);
      ellipse(i*3+2*em, 500-amount1[i], group3[i]*arg[2], group3[i]*arg[2]);
    }
    if (flag[3]>0&&group4[i]>0) {
      fill(52, 152, 219, 230);
      ellipse(i*3+2*em, 500-amount1[i], group4[i]*arg[3], group4[i]*arg[3]);
    }
    if (flag[4]>0&&group5[i]>0) {
      fill(231, 76, 60, 250);
      ellipse(i*3+2*em, 500-amount1[i], group5[i]*arg[4], group5[i]*arg[4]);
    }
  }
}

void drawbtn() {
  text("fans-amount", 1050, 90);
  textAlign(LEFT, BOTTOM);
  text("fans<10000", 1000, 115);
  text("10000<fans<100000", 1000, 145);
  text("100000<fans<1000000", 1000, 175);
  text("1000000<fans<1000000", 1000, 205);
  text("10000000<fans", 1000, 235);
  text("Reset", 1000, 260);
  textFont(font, 20);
  textAlign(LEFT, BOTTOM);
  text("+", 1245, 115);
  text("-", 1185, 115);
  text("+", 1245, 145);
  text("-", 1185, 145);
  text("+", 1245, 175);
  text("-", 1185, 175);
  text("+", 1245, 205);
  text("-", 1185, 205);
  text("+", 1245, 235);
  text("-", 1185, 235);
  noStroke();
  fill(46, 204, 113);
  rect(1200, 100, 40, 20);
  fill(241, 196, 15);
  rect(1200, 130, 40, 20);
  fill(142, 68, 173);
  rect(1200, 160, 40, 20);
  fill(52, 152, 219);
  rect(1200, 190, 40, 20);
  fill(231, 76, 60);
  rect(1200, 220, 40, 20);

  fill(52, 73, 94);  
  rect(1200, 250, 40, 20);

  noFill();
}