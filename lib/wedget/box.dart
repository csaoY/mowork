import 'package:flutter/material.dart';

class MoworkBox extends StatelessWidget {
  MoworkBox({
    Key key,
    this.color=Colors.red,
    this.bg=Colors.white,
    this.border=Colors.blue,
    this.center=Colors.green,
  }) : super(key: key);
  final color;
  final bg;
  final border;
  final center;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width:60,
      
      
        padding:new EdgeInsets.fromLTRB(10, 10, 10, 10),

        decoration: BoxDecoration(
            color:bg,
          border:Border.all(
            color:border, width: 1.0,
          ),
          borderRadius: new BorderRadius.circular((14)),
          
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child:Container(
                 alignment: Alignment.center,
                child:Text('以西',style: TextStyle(color:color),)
              ),
            ),
            new Divider(
              height: 0.5,
              color: center,
            ),
             Expanded(
              child:Container(
                 alignment: Alignment.center,
                child:Text('3',style: TextStyle(color:color),)
              ),
            ),
          ],
        ));
        
  }
}
