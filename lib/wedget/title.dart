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

const List<Map<String, dynamic>> TYPES = [
  {"title": "全部", "id": 0},
  {"title": "甜点饮品", "id": 1},
  {"title": "生日蛋糕", "id": 2},
  {"title": "火锅", "id": 3},
  {"title": "自助餐", "id": 4},
  {"title": "小吃", "id": 5},
  {"title": "快餐", "id": 6},
  {"title": "日韩料理", "id": 7},
  {"title": "西餐", "id": 8},
  {"title": "聚餐", "id": 9},
  {"title": "烧烤", "id": 10},
  {"title": "川菜", "id": 11},
  {"title": "江浙菜", "id": 12},
  {"title": "东北菜", "id": 13},
  {"title": "蒙餐", "id": 14},
  {"title": "新疆菜", "id": 15},
];

const int TYPE_INDEX = 2;
