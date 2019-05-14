import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class MsgPage extends StatelessWidget {
  var controller;
  void initState() {
    // controller = TabController(
    //   length: 3,
    //   //vsync: this, //动画效果的异步处理，默认格式，背下来即可
    // );
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('我的消息'),
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                text: '审批',
              ),
              new Tab(
                text: '任务',
              ),
              new Tab(
                text: '系统',
              ),
            ],
            controller: controller,
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            Wrapper(),
            Wrapper(),
            Wrapper(),
          ],
        ),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  //   GlobalKey<RefreshHeaderState> _headerKey = new GlobalKey<RefreshHeaderState>();
  // GlobalKey<RefreshFooterState> _footerKey = new GlobalKey<RefreshFooterState>();
    GlobalKey<RefreshFooterState> _footerKey = new GlobalKey<RefreshFooterState>();
  @override
  Widget build(BuildContext context) {
    return EasyRefresh(child: ListView(children: <Widget>[Amsg()]),
      refreshFooter:ClassicsFooter(
          key: _footerKey,
        bgColor: Colors.red,
        showMore: true,
        moreInfo: '记载中',
        loadReadyText:'上啦加载',
      ),
    // refreshFooter: Center(
        
    // ),
    loadMore: ()async{
         print('加载更多');
    },
     onRefresh: () async{
      
    },
    
    );
  }
}

class Amsg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15),
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(right: 15),
          height: 140,
          decoration: new ShapeDecoration(
              //color:Colors.red,
              shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 0.2))),
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('项目待审核',
                        style:
                            TextStyle(color: Color(0xFF5495FF), fontSize: 16)),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Text('234123',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFFABABAB))),
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          child: Text('12:18',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFFABABAB))),
                        )
                      ],
                    )
                  ],
                ),
                padding: EdgeInsets.fromLTRB(0, 10, 1, 10),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'img/03-min.jpg',
                          width: 100,
                          height: 80,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text('华伟E2SC软模项目',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF282828))),
                              ),
                              Text('项目编号：C122356',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xFFABABAB)))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container()
                ],
              ),
            ],
          ),
        ));
  }
}
