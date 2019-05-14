

import 'package:flutter/material.dart';
import 'package:dropdown_menu/dropdown_menu.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

const List<Map<String, dynamic>> TYPES = [
  {"title": "全部", "id": 0},
  {"title": "全部", "id": 0},
  {"title": "全部", "id": 0},
  {"title": "全部", "id": 0},
  {"title": "全部", "id": 0},
  {"title": "全部", "id": 0},
];

const int TYPE_INDEX = 2;
class _MyHomePageState extends State<MyHomePage> {
  ScrollController scrollController;

  //void initState() {
    // scrollController = new ScrollController();
    // globalKey = new GlobalKey();
    // super.initState();
  //}
  DropdownMenu buildDropdownMenu() {
    return new DropdownMenu(maxMenuHeight: kDropdownMenuItemHeight * 10,
        //  activeIndex: activeIndex,
        menus: [
          new DropdownMenuBuilder(
              builder: (BuildContext context) {
                return new DropdownListMenu(
                  selectedIndex: TYPE_INDEX,
                  data: TYPES,
                  itemBuilder: buildCheckItem,
                );
              },
              height: kDropdownMenuItemHeight * TYPES.length),

          ]);
  }

  DropdownHeader buildDropdownHeader({DropdownMenuHeadTapCallback onTap}) {
    return new DropdownHeader(
      titles: [TYPES[TYPE_INDEX]],
    );
  }
  Widget buildFixHeaderDropdownMenu() {
    return new DefaultDropdownMenuController(
        child: new Column(
      children: <Widget>[
        buildDropdownHeader(),
        new Expanded(
            child: new Stack(
          children: <Widget>[
            buildDropdownMenu()
          ],
        ))
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return buildFixHeaderDropdownMenu();
  }

}