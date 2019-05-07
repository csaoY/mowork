
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'project_page.dart';
import 'tool_page.dart';
import 'mine_page.dart';


class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _color = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState(){
    list
      ..add(HomePage())
      ..add(ToolPage())
      ..add(MinePage())
      ..add(ProjectPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: list[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         items: [
           BottomNavigationBarItem(
             icon:Icon(
               Icons.home,
               color:_color,
             ),
             title:Text(
               '主页',
               style:TextStyle(color:_color)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.email,
               color:_color,
             ),
             title:Text(
               '项目圈',
               style:TextStyle(color:_color)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.pages,
               color:_color,
             ),
             title:Text(
               '工具',
               style:TextStyle(color:_color)
             )
           ),
           BottomNavigationBarItem(
             icon:Icon(
               Icons.airplay,
               color:_color,
             ),
             title:Text(
               '我的',
               style:TextStyle(color:_color)
             )
           ),
         ],
         currentIndex:_currentIndex,
         onTap:(int index){
           setState((){
             _currentIndex= index;
           });
         },
         type:BottomNavigationBarType.fixed
       ),
     );
  }
}