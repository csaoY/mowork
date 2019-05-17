import 'package:flutter/material.dart';
import '../wedget/title.dart';
import '../wedget/box.dart';
import './scan.dart';
import 'package:barcode_scan/barcode_scan.dart';
import './msg.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:barcode_scan/barcode_scan.dart';

class HomePage extends StatelessWidget {


void initState(){

  //super.initState();
}
  @override

  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Top(),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Container(
              child: Column(
                children: <Widget>[
                  Atitle(title: '项目分布'),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Column(
                            children: _getListData(),
                          )),
                          Container(
                            width: 100,
                            child: Column(
                              children: <Widget>[Text('项目数量'), Text('2/72')],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              children: <Widget>[
                Atitle(title: '产品开发计划统计'),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            MoworkBox(
                                bg: Colors.red,
                                color: Colors.white,
                                border: Colors.blue,
                                center: Colors.white),
                            MoworkBox(),
                            MoworkBox(),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: Column(
                          children: <Widget>[Text('本年累计'), Text('已完结2个')],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              children: <Widget>[
                Atitle(title: '工装开发计划统计'),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            MoworkBox(
                                bg: Colors.red,
                                color: Colors.white,
                                border: Colors.blue,
                                center: Colors.white),
                            MoworkBox(),
                            MoworkBox(),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: Column(
                          children: <Widget>[Text('本年累计'), Text('已完结2个')],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              children: <Widget>[
                Atitle(title: 'issue统计'),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            MoworkBox(),
                            Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Column(
                                  children: <Widget>[
                                    Text('正常'),
                                    Text('预警'),
                                    Text('延期')
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('本年'),
                                Text('新增/关闭'),
                                Text('2/0')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text('本年'),
                                Text('新增/关闭'),
                                Text('2/0')
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

_getListData() {
  List<Widget> widgets = [];
  for (int i = 0; i < 10; i++) {
    widgets.add(Row(
      children: <Widget>[
        Container(
          child: Text('公司名称'),
          //margin: EdgeInsets.all(10),
          margin:EdgeInsets.only(right:10)
        ),
        Expanded(
          child: new LinearProgressIndicator(
            backgroundColor: Colors.blue,
            value: 0.2,
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text('0/1'),
        )
      ],
    ));
  }
  print(widgets);
  return widgets;
}




class Top extends StatefulWidget {
  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {

  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('深圳市伟博思科技有限公司', style: TextStyle(fontSize: 14)),
            Icon(IconData(0xe607, fontFamily: 'iconfont'),
                size: 15, color: Colors.white),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: GestureDetector(
                onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new MsgPage()),
                      );
                    },
                child: Icon(IconData(0xe714, fontFamily: 'iconfont'),
                    size: 20, color: Colors.white),
              ),
              margin: EdgeInsets.only(right: 20),
            ),
            Container(
                //margin:EdgeInsets.only(right:20),
                child: GestureDetector(
                    child: Icon(IconData(0xe6f3, fontFamily: 'iconfont'),
                        size: 20, color: Colors.white),
                    onTap: () {
                      scan();
                      
                    })),
          ],
        )
      ],
    );
  }
    Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() {
       
      });
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
        
        });
      } else {
        setState(() {
          
        });
      }
    } on FormatException{
      
    } catch (e) {
      
    }
  }

 
}


