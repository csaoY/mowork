import 'package:flutter/material.dart';

class CommonWrapper extends StatefulWidget {
  @override
  _CommonWrapperState createState() => _CommonWrapperState();
}

class _CommonWrapperState extends State<CommonWrapper> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        bottom: 0,
        left:0,
          child: Row(
          children: <Widget>[
            Expanded(child: Container(height:100,child: Text('列表'),)),
            Expanded(child: Text('列表'),)
          ],
        ),)
      ],
    );
  }
}
