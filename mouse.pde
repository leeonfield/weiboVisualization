void mouseClicked() {
  if (mouseY>100&&mouseY<120) {
    if (mouseX>1200&&mouseX<1240) {
      flag[0]*=-1;
    } else if (mouseX>1240&&mouseX<1260&&flag[0]>0) {
      arg[0]+=0.1;
    } else if (mouseX>1180&&mouseX<1200&&flag[0]>0) {
      if (arg[0]>0.1) {
        arg[0]-=0.1;
      }
    }
  }
  if (mouseY>130&&mouseY<150) {
    if (mouseX>1200&&mouseX<1240) {
      flag[1]*=-1;
    } else if (mouseX>1240&&mouseX<1260&&flag[1]>0) {
      arg[1]+=1;
    } else if (mouseX>1180&&mouseX<1200&&flag[1]>0) {
      if (arg[1]>1) {
        arg[1]-=1;
      }
    }
  }
  if (mouseY>160&&mouseY<180) {
    if (mouseX>1200&&mouseX<1240) {
      flag[2]*=-1;
    } else if (mouseX>1240&&mouseX<1260&&flag[2]>0) {
      arg[2]+=1;
    } else if (mouseX>1180&&mouseX<1200&&flag[2]>0) {
      if (arg[2]>1) {
        arg[2]-=1;
      }
    }
  }
  if (mouseY>190&&mouseY<210) {
    if (mouseX>1200&&mouseX<1240) {
      flag[3]*=-1;
    } else if (mouseX>1240&&mouseX<1260&&flag[3]>0) {
      arg[3]+=1;
    } else if (mouseX>1180&&mouseX<1200&&flag[3]>0) {
      if (arg[3]>1) {
        arg[3]-=1;
      }
    }
  }
  if (mouseY>220&&mouseY<240) {
    if (mouseX>1200&&mouseX<1240) {
      flag[4]*=-1;
    } else if (mouseX>1240&&mouseX<1260&&flag[4]>0) {
      arg[4]+=1;
    } else if (mouseX>1180&&mouseX<1200&&flag[4]>0) {
      if (arg[4]>1) {
        arg[4]-=1;
      }
    }
  }
  if (mouseY>250&&mouseY<270&&mouseX<1240&&mouseX>1200) {
    line_init();
  }
}