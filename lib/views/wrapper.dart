import 'package:flutter/material.dart';
import '../wedget/common_wrapper.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
    String _bodyStr = '显示菜单的点击';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title: Text('项目管理'),
          actions: <Widget> [
          new PopupMenuButton<String>(
            onSelected: (String value) {
              setState(() {
                _bodyStr = value;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              new PopupMenuItem<String>(
                value: '选项一的值',
                child: new Text('选项一')
              ),
              new PopupMenuItem<String>(
                value: '选项二的值',
                child: new Text('选项二')
              )
            ]
          )
        ]
        ),
      body: CommonWrapper(),
       
      
    );
  }
}