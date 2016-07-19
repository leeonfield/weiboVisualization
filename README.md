## weibo data Visualization
assignment of data visualization,which shows users'habit ofusing weibo and the weibo tendency of Yunnan terrorist attacks.

## 微博数据可视化

介绍:基于微博数据的进行的可视化

工具：Processing3.0

数据量：120W条

可视化对象:
- 微博用户发微时间「分析微博用户习惯」
- 大事件发生，微博数量的可视化「分析人群关注度趋势变化」

运行方式:
以工程方式在processing中打开，主文件是weibo.pde，运行即可

注：雷达图由秦望同学完成

处理过程如下:
原始数据是txt文件，使用processing对每条微博匹配相关字段过滤出与云南暴恐事件相关的微博，再将每条微博的发微时间，用户信息等信息提取，再将数据推进数组，结果存在json文件中。
**注：processing不适合处理数据，过程很漫长，可能会死机，所以处理数据是不建议用**
可视化时，展示的是json中的数据，数据处理的工作已经完成，processing只需要做展示，压力很小，展示效果见下图

![雷达图](http://7xlkdt.com1.z0.glb.clouddn.com//16-7-19/web1radar.png)
![折线图](http://7xlkdt.com1.z0.glb.clouddn.com//16-7-19/web2radar.png)

BUG：仍需要改进的地方，因为屏幕分辨率比较低，开发的时候忽略了分辨率自适应，