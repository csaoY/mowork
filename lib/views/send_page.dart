import 'package:flutter/material.dart';
import 'dart:async';
import 'package:image_picker/image_picker.dart';


class SendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('项目圈'),
          actions: <Widget>[
            Container(child: Text('发表',style:TextStyle(fontSize:16)), alignment: Alignment.center,  padding: EdgeInsets.only(right:20),)
          ],
          leading: Container(child: Text('取消',style:TextStyle(fontSize:16)), alignment: Alignment.center,
        
          )),
          body:Send() ,
    );
  }
}

class Send extends StatefulWidget {
  @override
  _SendState createState() => _SendState();
}

class _SendState extends State<Send> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
         Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: <Widget>[
          TextField(
            maxLines:5
          ),
           WarpDemo()
        ],
      ),
      
    )
    ]);

  }
}


//继承与动态组件
class WarpDemo extends StatefulWidget {
  _WarpDemoState createState() => _WarpDemoState();
}

class _WarpDemoState extends State<WarpDemo> {
  List<Widget> list;  //声明一个list数组

  @override
  //初始化状态，给list添加值，这时候调用了一个自定义方法`buildAddButton`
  void initState() {
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }


  @override
  Widget build(BuildContext context) {
    //得到屏幕的高度和宽度，用来设置Container的宽和高
    return Wrap(    //流式布局，
              children: list,
              spacing: 26.0,  //设置间距
            );
  }

  Widget buildAddButton(){
    //返回一个手势Widget，只用用于显示事件
    return  GestureDetector(
      onTap:(){
        _takePhoto();
        
      },
      child: Padding(
        padding:const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

_takePhoto() async {
    //var image = await ImagePicker.pickImage(source: ImageSource.camera);
    if(list.length<=9){
          var image = await ImagePicker.pickImage(source: ImageSource.gallery);
          setState(() {
                list.insert(list.length-1,buildPhoto(image));
          });
        }

   
  }
  Widget buildPhoto(file){
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.amber,
          child: Image.file(file)
        ),
    );
  }

}



