import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';
import '../config/service_url.dart';

import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
Future getToken() async {
  var token;
  var uid;
  try {
    SharedPreferences prefs = await _prefs;
    token = prefs.getString("token");
    uid = prefs.getString("uid");
    var obj = {'token': token, 'uid': uid};
    return obj;
  } catch (e) {}
}

Future getCode(mobile) async {
  try {
    var response;
    Dio dio = new Dio();
    //dio. options.contentType=ContentType(primaryType, subType)
    var formData = {'mobile': mobile, 'token': 'Jg6uH5ZAkksqaFco'};
    response = await dio.post(Path['sendCode'], data: formData);
    print(response);
    if (response.statusCode == 200) {
      Map<String, dynamic> res = jsonDecode(response.toString());
      return res;
    } else {
      return Exception('异常');
    }
  } catch (e) {
    return print('ERREO:=================$e');
  }
}

Future clickLogin(mobile) async {
  try {
    Response response;
    Dio dio = new Dio();
    //dio. options.contentType=ContentType(primaryType, subType)
    var formData = {'mobile': mobile};
    response = await dio.post(Path['smslogin'], data: formData);
    if (response.statusCode == 200) {
      Map<String, dynamic> res = jsonDecode(response.toString());
      return res;
    } else {
      return Exception('异常');
    }
  } catch (e) {
    return print('ERREO:=================$e');
  }
}

Future upload(file) async {
  try {
    print('什么鬼为什么不进来');

    Response response;
    Dio dio = new Dio();
    var data = await getToken().then((data) {
      return data;
    });
    print('#*#*#*#*#*#*#*#*#*#*#*#*#*#*#');
    print(file);
 
    // print(data['token']);
    // print(data['uid']);
    String token = data['token'];
    String uid = data['uid'];


    var formData = new FormData.from({
      'file':file,
      'token': token,
      'uid': uid
    });
    print(formData);
    response = await dio.post(
      Path['upload'],
      data: formData,
      onSendProgress: (int sent, int total) {
        print("$sent $total");
      },
    );
    print(response);
    if (response.statusCode == 200) {
      Map<String, dynamic> res = jsonDecode(response.toString());
      //print(res);
      return res;
    } else {
      print('异常');
      return Exception('异常');
    }
  } catch (e) {
    print('##########上传图片异常$e');
    return print('ERREO:=================$e');
  }
}

Future getUserInfo() async {
  try {
    var obj = await getToken().then((data) {
      return data;
    });
    Response response;
    Dio dio = new Dio();
    print('#######dfs####');
    print(obj);
    //dio. options.contentType=ContentType(primaryType, subType)
    var formData = {'token': obj['token'], 'uid': obj['uid']};
    response = await dio.get(Path['getUserInfo'], queryParameters: formData);
    if (response.statusCode == 200) {
      Map<String, dynamic> res = jsonDecode(response.toString());
      return res;
    } else {
      return Exception('异常');
    }
  } catch (e) {
    return print('ERREO:=================$e');
  }
}

Future setInfo({String face, String sex}) async {
  print('看看face');
  print(face);
  try {
    var obj = await getToken().then((data) {
      return data;
    });

    Response response;
    Dio dio = new Dio();
    //dio. options.contentType=ContentType(primaryType, subType)
    var formData = new FormData.from(
        {'token': obj['token'], 'uid': obj['uid'], 'face': face});
    response = await dio.post(Path['setInfo'], data: formData);
    if (response.statusCode == 200) {
      Map<String, dynamic> res = jsonDecode(response.toString());
      return res;
    } else {
      return Exception('异常');
    }
  } catch (e) {
    return print('ERREO:=================$e');
  }
}
