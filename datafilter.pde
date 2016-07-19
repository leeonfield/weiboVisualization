void datafilter() {
  kunterror=loadJSONArray("kunterror.json");
 // mplane=loadJSONArray("mplane.json");
  for (int i=0; i<kunterror.size(); i++) {
    int d=kunterror.getJSONObject(i).getInt("Date");
    int h=kunterror.getJSONObject(i).getInt("Hour");
    int m=kunterror.getJSONObject(i).getInt("Minute");
    int t=((d-1)*24*60+h*60+m)/15;
    amount1[t]+=1;
  }

}
void groupfilter() {
  JSONArray t=new JSONArray();
  t=loadJSONArray("kunterror.json");
  for (int i=0; i<t.size(); i++) {
    int d=t.getJSONObject(i).getInt("Date");
    int h=t.getJSONObject(i).getInt("Hour");
    int m=t.getJSONObject(i).getInt("Minute");
    int time=((d-1)*24*60+h*60+m)/15;
    int fan=t.getJSONObject(i).getInt("Fans");
    if (fan<10000) {
      group1[time]+=1;
    } else if (fan>10000&&fan<100000) {
      group2[time]+=1;
    } else if (fan>100000&&fan<1000000) {
      group3[time]+=1;
    } else if (fan>1000000&&fan<10000000) {
      group4[time]+=1;
    } else if (fan>10000000) {
      group5[time]+=1;
    }
  }
}