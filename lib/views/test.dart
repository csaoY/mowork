import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './login.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ImagePickerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImagePickerState();
  }
}

class _ImagePickerState extends State<ImagePickerWidget> {  
  var _imgPath;
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("测试"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              
              // RaisedButton(
              //   onPressed: _takePhoto,
              //   child: Text("拍照"),
              // ),
              // RaisedButton(
              //   onPressed: _openGallery,
              //   child: Text("选择照片"),
              // ),
              RaisedButton(
                onPressed: exit,
                child: Text("退出登录"),
              ),
              // RaisedButton(
              //   onPressed: () async{
              //      Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
              //       SharedPreferences prefs = await _prefs;
              //     print(prefs.getString('token'));
              //   },
              //   child: Text("hhahha"),
              // ),
            ],
          ),
        ));
  }

  /*图片控件*/
  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return Center(
        child: Text("请选择图片或拍照"),
      );
    } else {
      return Image.file(
        imgPath,
      );
    }
  }

  
  // /*拍照*/
  // _takePhoto() async {
  //   var image = await ImagePicker.pickImage(source: ImageSource.camera);
  //   setState(() {
  //     _imgPath = image;
  //   });
  // }

  // /*相册*/
  // _openGallery() async {
  //   var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  //   print(image);
  //   setState(() {
  //     _imgPath = image;
  //   });
  // }
  exit() async{
      Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
       SharedPreferences prefs = await _prefs;
       prefs.clear();//清空键值
       Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(
                builder: (context) => new Login()),
            (route) => route == null);

  }
}
