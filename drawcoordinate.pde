void drawCoordinate() {
  stroke(0, 0, 0);
  line(2*em, 100, 2*em, 500);
  line(2*em, 500, 1300, 500);
  fill(0, 0, 0);
  triangle(2*em-3, 106, 2*em, 100, 2*em+3, 106);
  triangle(1296, 496, 1300, 501, 1296, 504);
  noStroke();
  textFont(font, 12);
  text("weibo", 20, 80);
  text("time", 1300, 515);
  for (int i=1; i<48; i++) {
    stroke(153);
    line(i*24+2*em, 500, i*24+2*em, 505);
    text(i*2%24, i*24+2*em, 510);
    text("3-"+(1+i/12), i*24+2*em-7, 525);
  }
  for (int i=0; i<8; i++) {
    line(2*em, 500-50*i, 2*em+5, 500-50*i);
    text(50*i, 2*em-25, 500-50*i);
  }
  noFill();
}