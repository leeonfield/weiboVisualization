void leida ()
{ 
  textAlign(CENTER, CENTER);
  textFont(myFont);
  fill(0);
  text("一天中每个小时时间段微博数", width/2, height/2-ld_width[ld_count-1]/2-100);
  radar_angle+=PI/360;  //扫描循环变量
  //绘制同心圆;
  stroke(102);
  fill(#3ECE55);
  for (int i=ld_count-1; i>=0; i--)
  {    
    ellipse(point.x, point.y, ld_width[i], ld_height[i]);
  }
  noFill();
  noStroke();
  //绘制数据量度线
  float top_x=ld_width[ld_count-1]/2;  //圆弧上的的顶点
  float top_y=ld_width[ld_count-1]/2;

  for (int i=hours/4-1; i>=0; i--)
  {    
    if (i%12==0||i%6==0)
      stroke(102);
    else
      stroke(102, 90);
    line(point.x, point.y, point.x+top_x*cos(PI/12*i), point.y+top_y*sin(PI/12*i));
  }
  noStroke();
  fill(0);
  for (int i=ld_count-1; i>=0; i--)
  {
    textAlign(LEFT, TOP);
    textFont(myFont);  
    textSize(14*sf);
    text(int(ld_width[i]*50), point.x, point.y-ld_width[i]/2);
  }

  //绘制坐标  
  for (int i=hours/4-1; i>=0; i--)
  {   
    textAlign(CENTER, BOTTOM);
    textFont(myFont);  
    textSize(14*sf);
    text((i+"时"), point.x+top_x*cos(PI/12*i-PI/2)*1.1, point.y+top_y*sin(PI/12*i-PI/2)*1.1);
  }
  noFill();
  
  choose_day();
  //绘制数据点，连线
  int i;
  
  for (i=hours/4-1+24*day_choose; i>=0+24*day_choose; i--)
  {
    hour_length[i]=day_hour[i]/100;
    if (radar_angle<PI/12*(i-24*day_choose)-PI/2&&radar_angle+PI/12>PI/12*(i-24*day_choose)-PI/2)
    {
      point_size=8;
      radar_number(i);
    } else
    {
      point_size=4;
    }
    fill(rd_color);
    ellipse(point.x+hour_length[i]*cos(PI/12*i-PI/2), point.y+hour_length[i]*sin(PI/12*i-PI/2), point_size, point_size);
    noFill();
  }

  //雷达扫描
  if (int(radar_angle-PI/12-0.2)==int(PI*3/2-PI/12))
  {
    radar_angle=-PI/2-PI/12;
    println(int(radar_angle-PI/12-0.2)-int(PI*3/2-PI/12));
  }
  for (int k=1; k<=15; k++)
  {
    fill(#5BFA74, 20+k*7);
    arc(point.x, point.y, ld_width[ld_count-1], ld_width[ld_count-1], radar_angle+PI/170*k, radar_angle+PI/170*(k+1));
    noFill();
  }
}


void radar_number(int i)
{
  i=i-24*day_choose;
  textAlign(LEFT, BOTTOM);
  textSize(18);
  textFont(myFont);  
  //textSize(14*sf);
  fill(25, 0, 0);
  text(3+"月"+(day_choose+1)+"日",point.x+ld_width[ld_count-1], point.y);
  textAlign(LEFT, TOP);
  if (i>0)
  {
    text((i-1)+"时"+"-"+i+"时微博数："+day_hour[i+24*day_choose], point.x+ld_width[ld_count-1], point.y);
  } else
  {
    text((i+23)+"时"+"-"+(i+24)+"时微博数："+day_hour[i+24*day_choose], point.x+ld_width[ld_count-1], point.y);
  }
  noFill();
  textSize(14);
}

void choose_day()
{
  textFont(myFont);
  textSize(14*sf);
  textAlign(LEFT, TOP);
  for(int i=0;i<4;i++)
  {
     fill(255/(i+1),40*i,50*i);
     rect(1000+i*60, 600, 40, 20);
     fill(0);
     text(3+"月"+(i+1)+"日",1000+i*60, 620);
  }
  noFill();
}