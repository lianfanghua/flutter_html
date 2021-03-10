import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: new MyHomePage(title: 'flutter_html Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

const htmlData = """
<div style='font-size:18px;line-height:1.2;'>
<img src="https://www.wakeai.cn/static/hnxjz/73f81953bb1e6dbe07df91f908e4b15a77e989b11608630789.jpg">
<p style="text-indent:2em;">　　新湖南客户端12月22日讯（通讯员 秦于钦）12月18日，第35届衡阳市青少年科技创新大赛在衡阳高新区衡州小学举行，衡州小学的湖南日报小记者对此次大赛全程进行了体验采访。</p>
<img src="https://www.wakeai.cn/static/hnxjz/0a0ef28c9cd68d45ed4a1592ac14059ac65561201608630832.jpg">
<p style="text-indent:2em;">　　本届大赛由衡阳市科学技术协会、衡阳市教育局、衡阳市科学技术局联合主办，以“创新·体验·成长”为主题，共收到117所中小学校推荐申报的542个项目作品。通过参加市级资格审查和初评，此次共有来自全市35所中小学校的67名学生的46个优秀项目进入决赛。大赛共设立7项奖项。</p>
<img src="https://www.wakeai.cn/static/hnxjz/3fb6e017c4545635b34754371653018d3f30bb3b1608630859.jpg">
<p style="text-align:center;font-size:14px;">衡阳市教育局副局长彭天文</p>
<p style="text-indent:2em;">　　衡阳市教育局副局长彭天文接受湖南日报小记者黄馨乐体验采访时说：“科技创新是教育之本，衡阳教育系统历来非常重视科技教育工作。”他希望通过湖南日报小记者告诉广大青少年，平时多观察生活中的科技现象，不断探索科技精神。</p>
<img src="https://www.wakeai.cn/static/hnxjz/1bf0aebc933cfdf21d46697d360260b99912154c1608630880.jpg">
<p style="text-align:center;font-size:14px;">衡阳市科协青少年科技活动中心副主任李艳</p>
<p style="text-indent:2em;">　　衡阳市科协青少年科技活动中心副主任李艳向小记者曾梓恒介绍说：“本次青少年科技创新大赛，旨在为全省和全国的同类型赛事选拔好的参赛作品，同时也是培养同学们的动手能力，给大家一个交流展示的平台。”</p>
<img src="https://www.wakeai.cn/static/hnxjz/63b889d3d02e78f284cad15357220206d7b6d01c1608630922.jpg">
<p style="text-align:center;font-size:14px;">衡阳市科技馆馆长何志文</p>
<p style="text-indent:2em;">　　衡阳市科技馆馆长何志文已经是第二次接受湖南日报小记者的体验采访了，他勉励小记者蒋易辰平时学好书本知识，打好理论基础。拓展兴趣爱好，拓展创新思维，就一定能在科技创新上取得成绩。</p>
<img src="https://www.wakeai.cn/static/hnxjz/14ed82c2d44123549b06619ddf21648f4039ee9f1608631090.jpg">
<p style="text-align:center;font-size:14px;">衡州小学校长黄勇</p>
<p style="text-indent:2em;">　　衡阳高新区衡州小学是此次活动的协办单位之一，是衡阳市青少年科技活动示范学校，目前正在争创省级青少年科技活动示范学校。衡州小学校长黄勇告诉小记者张竞文，衡州学子在科技创新活动中涌现了很多优秀的人才。全国青少年科学影像节三等奖，市青少年科技创新大赛二等奖得主，均是该校在读学生。</p>
<img src="https://www.wakeai.cn/static/hnxjz/2a41dccc23dffc0cd0f0ed66d91baee545b0fc7d1608631056.jpg">
<p style="text-align:center;font-size:14px;">34届衡阳市青少年科技创新大赛二等奖得主彭治策</p>
<img src="https://www.wakeai.cn/static/hnxjz/84313c8403548e14ac4889d98b98d01f385835491608631197.jpg">
<p style="text-align:center;font-size:14px;">第十届全国青少年科学影像节三等奖得主</p>
<img src="https://www.wakeai.cn/static/hnxjz/bec14372cea660e5edb4344a91a588df449f434d1608631273.jpg">
<p style="text-align:center;font-size:14px;">衡州小学科学老师刘晗</p>
<p style="text-indent:2em;">　　赛后，湖南日报小记者们也与衡州小学科学老师刘晗以及优秀的衡州科技学子进行了交流，小记者们深刻的感受到了科技给学习生活带来的变化，领略了它的独特魅力。</p>
</div>
""";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('flutter_html Example'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Html(
          data: htmlData,
          style: {},
          onLinkTap: (url) {
            print("Opening $url...");
          },
          onImageTap: (src) {
            print(src);
          },
          onImageError: (exception, stackTrace) {
            print(exception);
          },
        ),
      ),
    );
  }
}
