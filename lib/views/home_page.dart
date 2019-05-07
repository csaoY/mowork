import 'package:flutter/material.dart';
import '../wedget/title.dart';
import '../wedget/box.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
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
                              margin:EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child:Column(children: <Widget>[
                              Text('正常'),
                              Text('预警'),
                              Text('延期')
                            ],)
                            ),
                            
                          ],
                        ),
                      ),
                       Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                           Column(children: <Widget>[
                             Text('本年'),
                              Text('新增/关闭'),
                               Text('2/0')
                           ],),
                           Column(children: <Widget>[
                             Text('本年'),
                              Text('新增/关闭'),
                               Text('2/0')
                           ],)
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
          margin: EdgeInsets.all(10),
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
