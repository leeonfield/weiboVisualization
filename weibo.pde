
PFont font;
int em=20;
int count=0;
int[] amount1=new int[2000];
int[] amount2=new int[2000];
int[] group1=new int[2000];
int[] group2=new int[2000];
int[] group3=new int[2000];
int[] group4=new int[2000];
int[] group5=new int[2000];
int[] flag=new int[5];
float[] arg=new float[5];

JSONArray kunterror=new JSONArray();
JSONArray kbigv=new JSONArray();
JSONArray mbigv=new JSONArray();

//radar
PVector pointx, pointy;  //雷达图圆心
int day_hour[];      //一天中每小时的微博数
int hours;      //每天分的时间段个数
PVector point;  //雷达图的圆心
float ld_width[], ld_height[];  //雷达图的直径
float sf;   //缩放比例
PFont myFont;
int ld_count;  //雷达图同心圆的个数
int hour_length[];  //每个时间段的个数
int hour_length2;  //每个时间段的个数
float radar_angle;  //扫描角度
float point_size;   //结点大小
boolean lei=true;
int day_choose;
color rd_color;  //不同日期数据点的颜色

void setup() {
  font = loadFont("Courier-12.vlw");
  fullScreen();
  pixelDensity(displayDensity());
  datafilter();
  groupfilter();
  line_init();
  radar_init();
}
void draw() {
  background(204, 204, 204);
  mouse_control();
  if (lei==true)
  {
    leida();
  } else
  {
    drawCoordinate();
    drawKterror();
    drawWeiboAmount();
    drawbtn();
    drawgroup();
  }
}