import 'package:flutter/material.dart';
import '../wedget/login_form_code.dart';
//import 'package:dio/dio.dart';
import '../service/service_methods.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './nav.dart';


class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  //手机号的控制器
  TextEditingController phoneController = TextEditingController();
  String code;
  //密码的控制器
  TextEditingController passController = TextEditingController();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('登陆'),
        ),
        body: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  //labelText: '请输入你的用户名',
                  hintText: '请输入手机号',
                  //errorText: 'shenmegui'
                ),
                autofocus: false,
              ),
              TextField(
                controller: passController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  labelText: '请输入验证码',
                ),
                // obscureText: true
              ),
              LoginFormCode(
                
                  available: true,
                  onTapCallback: () async {
                    getCode(phoneController.text).then((val) {
                      print(val);
                      code = val['data']['code'];
                    });
                    // getCode(phoneController.text).then()
                  }),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Colors.lightBlue,
                          onPressed: _login,
                          textColor: Colors.white,
                          child: Text('登录'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                        ),
                      ),
                    ],
                  )),
              // Provide<Token>(
              //   builder: (context, child, token) {
              //     return Text('${token.token}');
              //   },
              // )
            ],
          ),
        ));
  }

  void _login() {
    print({'phone': phoneController.text, 'password': passController.text});
    if (phoneController.text.length != 11) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('手机号码格式不对'),
              ));
    } else if (passController.text != code) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('验证码输入不正确'),
              ));
    } else {
      clickLogin(phoneController.text).then((res) async {
        //Provide.value<Token>(context).change();
        SharedPreferences prefs = await _prefs;
        print('=================');
        print(res);
        print(res['data']['token']);
        prefs.setString("token", res['data']['token']);
        prefs.setString("uid", res['data']['uid']);
        print(prefs.getString('token'));

        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(
                builder: (context) => new BottomNavigationWidget()),
            (route) => route == null);
        //Provide.value(context).change();
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text('登录成功'),
                ));
        phoneController.clear();
      });
    }
  }

  void onTextClear() {
    setState(() {
      phoneController.clear();
      passController.clear();
    });
  }
}
