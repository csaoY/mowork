import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('项目圈'),
        ),
        body: ListView(
          children: <Widget>[Dynamic()],
        ));
  }
}

class Dynamic extends StatefulWidget {
  @override
  _DynamicState createState() => _DynamicState();
}

class _DynamicState extends State<Dynamic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 35, 15, 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Image.asset('img/services.jpg', width: 50, height: 50),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '我的姓名',
                    style: TextStyle(color: Color(0xFF5495FF), fontSize: 15),
                  ),
                ),
                Container(
                  child: Text('研发部研发部研发部研发部研发部研发部研发部研发部研发部研发部研发部研发部',
                      softWrap: true,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xFF282828), fontSize: 15, height: 1.4)),
                ),
                Container(
                    // height:500,
                    child: GridView.count(
                  physics: new NeverScrollableScrollPhysics(),
                  primary: false,
                  padding: const EdgeInsets.only(bottom: 10),
                  crossAxisSpacing: 0,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      child: Image.asset('img/services.jpg'),
                      margin: const EdgeInsets.only(bottom: 10),
                    ),
                    Container(
                      child: Image.asset('img/services.jpg'),
                      margin: const EdgeInsets.only(bottom: 10),
                    ),
                    Container(
                      child: Image.asset('img/services.jpg'),
                      margin: const EdgeInsets.only(bottom: 10),
                    ),
                    Container(
                      child: Image.asset('img/services.jpg'),
                      margin: const EdgeInsets.only(bottom: 10),
                    ),
                    Container(
                      child: Image.asset('img/services.jpg'),
                      margin: const EdgeInsets.only(bottom: 10),
                    ),
                  ],
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('10:45'),
                    InkWell(
                      child: Text('操作'),
                      onTap: () {
                        print('1234');
                      },
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Color(0xFFF3F6FB),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Wrap(
                              //crossAxisAlignment:WrapCrossAlignment.start,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              textDirection: TextDirection.ltr,
                              children: <Widget>[
                                Container(
                                  child: Icon(
                                    IconData(
                                      0xe6e8,
                                      fontFamily: 'iconfont',
                                    ),
                                    color: Colors.blue,
                                    size: 16,
                                  ),
                                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                ),
                                InkWell(
                                  child: Text('李东,'),
                                  onTap: () {
                                    print('123455');
                                  },
                                ),
                                InkWell(
                                  child: Text('李东,'),
                                ),
                                InkWell(
                                  child: Text('李东,'),
                                )
                              ],
                            ),
                            Wrap(
                              //  alignment:WrapAlignment.start,
                              //   spacing: 2, //主轴上子控件的间距
                              //   runSpacing: 5, //交叉轴上子控件之间的间距
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {},
                                  child: Text('我的姓名'),
                                ),
                                RichText(
                                  text:TextSpan(
                                    text:' 我是谁的辛苦了晋段赛各环节的世界观顺口溜回家大哥；啊'
                                  ),
                                 
                                  softWrap: true,
                                  textAlign: TextAlign.left,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
