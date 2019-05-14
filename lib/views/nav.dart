import 'package:flutter/material.dart';
import 'home_page.dart';
import 'project_page.dart';
import 'tool_page.dart';
import 'mine_page.dart';
import 'test.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _active = Colors.blue;
  final _color = Color(0xFFABABAB);
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list
      ..add(HomePage())
      ..add(ProjectPage())
      ..add(ToolPage())
      ..add(MinePage())
      ..add(ImagePickerWidget());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: _currentIndex == 0
                    ? Icon(IconData(0xe795, fontFamily: 'iconfont'),
                        color: Colors.blue, size: 20.0)
                    : Icon(IconData(0xe794, fontFamily: 'iconfont'),
                        size: 20.0),
                title: Text('主页',
                    style: TextStyle(
                        color: _currentIndex == 0 ? _active : _color))),
            BottomNavigationBarItem(
                icon: _currentIndex == 1
                    ? Icon(IconData(0xe792, fontFamily: 'iconfont'),
                        color: Colors.blue, size: 20.0)
                    : Icon(IconData(0xe793, fontFamily: 'iconfont'),
                        size: 20.0),
                title: Text('项目圈',
                    style: TextStyle(
                        color: _currentIndex == 1 ? _active : _color))),
            BottomNavigationBarItem(
                icon: _currentIndex == 2
                    ? Icon(IconData(0xe791, fontFamily: 'iconfont'),
                        color: Colors.blue, size: 20.0)
                    : Icon(
                        IconData(0xe790, fontFamily: 'iconfont'),
                      ),
                title: Text('工具',
                    style: TextStyle(
                        color: _currentIndex == 2 ? _active : _color))),
            BottomNavigationBarItem(
                icon: _currentIndex == 3
                    ? Icon(IconData(0xe70e, fontFamily: 'iconfont'),
                        color: Colors.blue, size: 20.0)
                    : Icon(
                        IconData(0xe70f, fontFamily: 'iconfont'),
                      ),
                title: Text('我的',
                    style: TextStyle(
                        color: _currentIndex == 3 ? _active : _color))),
                         BottomNavigationBarItem(
                icon: _currentIndex == 4
                    ? Icon(IconData(0xe792, fontFamily: 'iconfont'),
                        color: Colors.blue, size: 20.0)
                    : Icon(IconData(0xe793, fontFamily: 'iconfont'),
                        size: 20.0),
                title: Text('项目圈',
                    style: TextStyle(
                        color: _currentIndex == 4 ? _active : _color))),
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed),
    );
  }
}
