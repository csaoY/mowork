import 'package:flutter/material.dart';
import './down_menue.dart';

class CommonWrapper extends StatefulWidget {
  @override
  _CommonWrapperState createState() => _CommonWrapperState();
}

class _CommonWrapperState extends State<CommonWrapper> {
  @override
  Widget SelectOption() {
  }

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(15, 12, 15, 12),
                color: Colors.white,
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F6FB),
                    borderRadius: new BorderRadius.circular((4)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        IconData(
                          0xe6f7,
                          fontFamily: 'iconfont',
                        ),
                        color: Color(0xFFD9D9D9),
                        size: 14,
                      ),
                      Container(
                          child: Text('搜索',
                              style: TextStyle(color: Color(0xFFD9D9D9))),
                          margin: EdgeInsets.only(left: 10))
                    ],
                  ),
                )),
            Container(
              height: 15,
              color: Color(0xFFF3F6FB),
            ),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    decoration: new ShapeDecoration(
                        //color:Colors.red,
                        shape: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFE9E9E9),
                                style: BorderStyle.solid,
                                width: 1))),
                    child: Row(
                      children: <Widget>[
                        //MyHomePage(),
                        Expanded(
                            child: GestureDetector(
                              child: Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('按时间排序'),
                                      Icon(
                                        IconData(
                                          0xe607,
                                          fontFamily: 'iconfont',
                                        ),
                                        size: 14,
                                      ),
                                    ],
                                  )),
                              onTap: () {},
                            ),
                            //child: DownMenue(),
                            flex: 3),
                        Expanded(
                            child: GestureDetector(
                              child: Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('升序'),
                                      Icon(
                                        IconData(
                                          0xe79e,
                                          fontFamily: 'iconfont',
                                        ),
                                        size: 14,
                                      ),
                                    ],
                                  )),
                              onTap: () {},
                            ),
                            flex: 2),
                        Expanded(
                            child: GestureDetector(
                              child: Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('降序'),
                                      Icon(
                                        IconData(
                                          0xe79f,
                                          fontFamily: 'iconfont',
                                        ),
                                        size: 14,
                                      ),
                                    ],
                                  )),
                              onTap: () {},
                            ),
                            flex: 2),
                        Expanded(
                            child: GestureDetector(
                              child: Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        IconData(
                                          0xe7a3,
                                          fontFamily: 'iconfont',
                                        ),
                                        size: 14,
                                      ),
                                    ],
                                  )),
                              onTap: () {},
                            ),
                            flex: 1),
                        Expanded(
                            child: GestureDetector(
                              child: Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('筛选'),
                                      Icon(
                                        IconData(
                                          0xe7a1,
                                          fontFamily: 'iconfont',
                                        ),
                                        size: 14,
                                      ),
                                    ],
                                  )),
                              onTap: () {},
                            ),
                            flex: 2),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    color: Colors.white,
                    //height: 123,
                    child: Column(
                      children: _getOptions()
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // alignment: Alignment.center,
                      children: <Widget>[
                        Text('列表'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // alignment: Alignment.center,
                      children: <Widget>[
                        Text('列表'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // alignment: Alignment.center,
                      children: <Widget>[
                        Text('列表'),
                      ],
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}

class MNum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      padding: EdgeInsets.fromLTRB(5, 0, 5, 9),
      color: Colors.red,
    );
  }
}
const optionList=['按时间','按价格','？？？'];
List<Widget> _getOptions() {
  List<Widget> widgets = [];
  for (int i = 0; i < optionList.length; i++) {
    widgets.add(new GestureDetector(
      onTap:(){
        print(23333);
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        decoration: new ShapeDecoration(
            shape: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xFFE9E9E9),
                    style: BorderStyle.solid,
                    width: 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(optionList[i]),
            Container(
              child: Text('训中'),
              height: 40,
              alignment: Alignment.center,
            )
          ],
        ),
      ),
    ));
  }
  print(widgets);
  return widgets;
}