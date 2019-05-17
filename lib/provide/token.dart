import 'package:flutter/material.dart';
import '../service/service_methods.dart';

class Token with ChangeNotifier {
  String token='1';
  change() {
    //  print('13412#############');
    getToken().then((data) {
      token = data;
     // print('##############TOKEN$token');
      notifyListeners();
    });
   // notifyListeners();
  }
}
