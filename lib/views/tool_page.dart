import 'package:flutter/material.dart';
import '../wedget/title.dart';

class ToolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('工具'),
        ),
        body: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Atitle(title: '我的模块'),
                Container(
                  //padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Wrap(
                    spacing: 2, //主轴上子控件的间距
                    runSpacing: 5, //交叉轴上子控件之间的间距
                    children: boxs(),
                    // <Widget>[
                    //   Container(
                    //     width: 100,
                    //     height: 100,
                    //     child: Column(
                    //       children: <Widget>[Text('任务')],
                    //     ),
                    //   ),
                    //   Container(
                    //     width: 100,
                    //     height: 100,
                    //     child: Column(
                    //       children: <Widget>[Text('任务')],
                    //     ),
                    //   )
                    // ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
  List<Widget> boxs() => List.generate(10, (index) {
      return Container(
        width: 100,
        height: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orangeAccent, Colors.orange, Colors.deepOrange]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('文字描述')
          ],

        )
      );
    });
  class ToolNavigator extends StatelessWidget {
    //var a=[1,2,3,4,5];
    final List list;
    const ToolNavigator({Key key,this.list=const [1,2,3,4,5]}) : super(key: key);
    Widget _toolNavUi(BuildContext context,item) {
      return InkWell(
        onTap: (){print('点击了一下');},
        child:Column(children: <Widget>[
          Image.network('https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3053831727,4262545098&fm=58',width:50),
          Text('导航')
        ],)
      );
    }
 
    @override
    Widget build(BuildContext context) {
      return Container(
        height:80,
        padding:EdgeInsets.all(3.0),
        child:GridView.count(
          crossAxisCount: 4,
          padding:EdgeInsets.all(5.0),
          children: list.map((item){
            return _toolNavUi(context,item);
          })
        )
      );
    }
  }

