import 'package:flutter/material.dart';

class Atitle extends StatelessWidget {
  Atitle({
    Key key,
    this.title,
    this.color = Colors.blue,
  }) : super(key: key);
  final title;
  final color;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(width: 2, height: 10, color: Colors.blue),
        Container(width: 10, height: 10),
        Expanded(
            child: Container(
          child: Text(title),
          alignment: Alignment.centerLeft,
          height: 30,
          decoration: new ShapeDecoration(
              shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: color, style: BorderStyle.solid, width: 1))),
        ))
      ],
    );
  }
}
