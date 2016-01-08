void radar_init()
{
  sf=min(width/1440.0, height/900.0);//sf:scalefactor
  //sf=0.7;//sf:scalefactor
  myFont = createFont("黑体", 14);
  textFont(myFont);  
  textSize(14*sf);

  hours=24*4;    //初始化时间段数
  day_hour=new int[hours];
  day_choose=0;  //选择显示某天的数据
  rd_color=color(255,0,0);

  hour_length=new int[hours];
  point=new PVector();

  //获取每天各个时间段的数据
  String []lines=loadStrings("day_hour.txt");
  for (int j=0; j<lines.length; j++)
  {
    String pis[]=splitTokens(lines[j], " ");
    for (int i=0; i<pis.length; i++)
    {
      day_hour[i]=int(pis[i]);
    }
  }
  //初始化雷达图
  point.x=width/2;    //初始化话雷达图圆心
  point.y=height/2;
  ld_count=4;    //初始化雷达图同心圆个数
  ld_width=new float[ld_count];
  ld_height=new float[ld_count];
  ld_width[0]=100;  ld_height[0]=100;
  ld_width[1]=200;  ld_height[1]=200;
  ld_width[2]=300;  ld_height[2]=300;
  ld_width[3]=400;  ld_height[3]=400;
  radar_angle=-PI/2-PI/12;  //初始化雷达图扫描起始位置
  //radar_angle=0-PI;
  point_size=3;    //初始化雷达图结点初始大小
}