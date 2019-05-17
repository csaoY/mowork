import 'package:flutter/material.dart';
//import 'package:barcode_scan/barcode_scan.dart';
import 'dart:async';
import 'package:flutter/services.dart';
class scanqr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: sacnBody(),
    );
  }
}

class sacnBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _MyScanState();
  }
}

class _MyScanState extends State<sacnBody> {
  String barcode = "";

  @override
  void initState() {
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        title: new Text('QR Code'),
      ),
      body: new Center(
        child: new Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: RaisedButton(
                  color: Colors.orange,
                  textColor: Colors.white,
                  splashColor: Colors.blueGrey,
                  
                  child: const Text('START CAMERA SCAN'),
                  ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                barcode,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

}
