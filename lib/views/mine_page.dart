import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('个人中心'),
        ),
        body: Mine());
  }
}

class Mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF3F6FB),
      child: ListView(
        children: <Widget>[MineHead(), Seconed(), Three(), Four(), Five()],
      ),
    );
    // Column(
    //   children: <Widget>[
    //     MineHead(),
    //     Seconed(),
    //     Three(),
    //     Four(),
    //     Five()
    //   ],
    // );
  }
}

class MineHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil.getInstance().setWidth(750),
        //height: ScreenUtil.getInstance().setHeight(450),
        decoration: BoxDecoration(
            color: Color(0xFFF3F6FB),
            image: DecorationImage(
                image: AssetImage("img/home-bg.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment(-1, -1))),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: ScreenUtil.getInstance().setWidth(630),
              height: ScreenUtil.getInstance().setHeight(320),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage("img/scene-bg.png"),
                  fit: BoxFit.contain,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(child:   Image.asset('img/services.jpg',width:50,height:50),),
                  Text('姓名'),
                  Text('公司名称'),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('部门'),
                            Text('设计部门'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('职位'),
                            Text('设计总监'),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class Three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(
            0, ScreenUtil.getInstance().setHeight(30), 0, 0),
        color: Colors.white,
        height: ScreenUtil.getInstance().setHeight(140),
        child: Row(children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '项目',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: false).setSp(24),
                      height: 2,
                      color: Color(0xFF282828)),
                ),
                Text(
                  '20',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: false).setSp(24),
                      height: 2,
                      color: Color(0xFF282828)),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '产品计划',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: true).setSp(24),
                      height: 2,
                      color: Color(0xFF282828)),
                ),
                Text(
                  '30',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: true).setSp(24),
                      height: 2,
                      color: Color(0xFF282828)),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '工装计划',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: true).setSp(24),
                      height: 2,
                      color: Color(0xFF282828)),
                ),
                Text(
                  '10',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: true).setSp(24),
                      height: 2,
                      color: Color(0xFF282828)),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'ISSUE',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: true).setSp(24),
                      height: 2,
                      color: Color(0xFF282828)),
                ),
                Text(
                  '100',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: true).setSp(24),
                      height: 2,
                      color: Color(0xFF282828)),
                )
              ],
            ),
          )
        ]));
  }
}

class Four extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(
            0, ScreenUtil.getInstance().setHeight(30), 0, 0),
        color: Colors.white,
        height: ScreenUtil.getInstance().setHeight(140),
        child: Row(children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '按时完成',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: false).setSp(20),
                      height: 2,
                      color: Color(0xFF282828)),
                ),
                Text(
                  '30%',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: false).setSp(32),
                      height: 2,
                      color: Color(0xFF282828)),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '提前完成',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: false).setSp(20),
                      height: 2,
                      color: Color(0xFF282828)),
                ),
                Text(
                  '50%',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: false).setSp(32),
                      height: 2,
                      color: Color(0xFF282828)),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '延期完成',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: false).setSp(20),
                      height: 2,
                      color: Color(0xFF282828)),
                ),
                Text(
                  '20%',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: false).setSp(32),
                      height: 2,
                      color: Color(0xFF282828)),
                )
              ],
            ),
          )
        ]));
  }
}

class Seconed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(
            0, ScreenUtil.getInstance().setHeight(30), 0, 0),
        color: Colors.white,
        height: ScreenUtil.getInstance().setHeight(180),
        child: Row(children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(IconData(0xe714, fontFamily: 'iconfont'),
                    size: 30, color: Color(0xFF5495FF)),
                Text(
                  '我的消息',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: true).setSp(24),
                      height: 2,
                      color: Color(0xFF5495FF)),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(IconData(0xe7a5, fontFamily: 'iconfont'),
                    size: 30, color: Color(0xFF5495FF)),
                Text(
                  '我的足迹',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: true).setSp(24),
                      height: 2,
                      color: Color(0xFF5495FF)),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(IconData(0xe6e8, fontFamily: 'iconfont'),
                    size: 30, color: Color(0xFF5495FF)),
                Text(
                  '我的赞',
                  style: TextStyle(
                      fontSize: ScreenUtil(allowFontScaling: true).setSp(24),
                      height: 2,
                      color: Color(0xFF5495FF)),
                )
              ],
            ),
          )
        ]));
  }
}

class Five extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin:
          EdgeInsets.fromLTRB(0, ScreenUtil.getInstance().setHeight(30), 0, 0),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(IconData(0xe7a6, fontFamily: 'iconfont'),
                        size: 24, color: Color(0xFFFFA21E)),
                        Container(
                         // height:80,
                        alignment: Alignment.centerLeft,
                          margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child:Text('积分兑换',
                        style: TextStyle(
                          fontSize: 18,
                          
                        )) ,)
                    
                  ],
                )),
                Container(
                    child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('6000',
                        style: TextStyle(
                            fontSize:18,
                            color: Color(0xFFD9D9D9))),
                    Icon(IconData(0xe614, fontFamily: 'iconfont'),
                        size: 24, color: Color(0xFFD9D9D9)),
                  ],
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
