import 'package:flutter/material.dart';
import '../wedget/common_wrapper.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title: Text('项目管理'),
        ),
      body: CommonWrapper(),
      
    );
  }
}