import 'package:flutter/material.dart';
import '../wedget/title.dart';
import './wrapper.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToolPage extends StatelessWidget {
  final List _list = [
    {
      'color': Color(0xFF5495FF),
      'icon': IconData(0xe77a, fontFamily: 'iconfont'),
      'name': '任务'
    },
    {
      'color': Color(0xFF5495FF),
      'icon': IconData(0xe77a, fontFamily: 'iconfont'),
      'name': '项目'
    },
    {
      'color': Color(0xFFFFA21E),
      'icon': IconData(0xe77a, fontFamily: 'iconfont'),
      'name': '计划'
    },
    {
      'color': Color(0xFFFF2417),
      'icon': IconData(0xe77a, fontFamily: 'iconfont'),
      'name': 'ISSUE'
    },
    {
      'color': Color(0xFFFF2417),
      'icon': IconData(0xe77a, fontFamily: 'iconfont'),
      'name': 'ISSUE'
    },
    {
      'color': Color(0xFFFF2417),
      'icon': IconData(0xe77a, fontFamily: 'iconfont'),
      'name': 'ISSUE'
    },
    {
      'color': Color(0xFFFF2417),
      'icon': IconData(0xe77a, fontFamily: 'iconfont'),
      'name': 'ISSUE'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('工具'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
                child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Atitle(title: '我的模块', color: Colors.white),
                          Container(
                            //padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Wrap(
                              spacing: 2, //主轴上子控件的间距
                              runSpacing: 5, //交叉轴上子控件之间的间距
                              children: [ToolNavigator(list: _list)],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Atitle(title: '全部工具', color: Colors.white),
                          Container(
                            //padding: EdgeInsets.fromLTRB(10, 0, 0, 0),

                            child: Wrap(
                              spacing: 2, //主轴上子控件的间距
                              runSpacing: 5, //交叉轴上子控件之间的间距
                              children: [ToolNavigator(list: _list)],
                            ),
                          ),
                        ],
                      ),
                    )

                    // Container(
                    //    // height: ScreenUtil.getInstance().setWidth(20),
                    //     color: Color(0xFFF3F6FB)),
                  ],
                )
              ],
            )),
          ],
        ));
  }
}

// List<Widget> boxs() => List.generate(10, (index) {
//       return Container(
//           width: 100,
//           height: 40,
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Colors.orangeAccent,
//               Colors.orange,
//               Colors.deepOrange
//             ]),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[Text('文字描述')],
//           ));
//     });

class ToolNavigator extends StatelessWidget {
  final List list;
  const ToolNavigator({Key key, this.list}) : super(key: key);
  Widget _toolNavUi(BuildContext context, item) {
    return InkWell(
        onTap: () {
          //print('点击了一下');
           Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Wrapper()),
                      );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image.network('https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3053831727,4262545098&fm=58',width:50,height:40),
            Container(
              // width: ScreenUtil.getInstance().setWidth(100),
              // height: ScreenUtil.getInstance().setWidth(100),
              width: 60, height: 60,
              //color:Color(0xFF5495FF),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: item['color'],
              ),
              child: Icon(item['icon'], size: 30, color: Colors.white),
            ),
            Text(item['name'], style: TextStyle(height: 1.5))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //height: ScreenUtil.getInstance().setWidth(180),
        child: GridView.count(
            physics: new NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: list.map((item) {
              return _toolNavUi(context, item);
            }).toList()));
  }
}
