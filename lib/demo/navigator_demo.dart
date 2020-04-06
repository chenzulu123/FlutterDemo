import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  const NavigatorDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigatorDemo'),
        //标题居中
        centerTitle: true,
      ),
      body: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        FlatButton(
            child: Text('Home'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Page(title: 'Home')));
            }),
        FlatButton(
            child: Text('About'),
            onPressed: () {
              Navigator.of(context).push(
                  // 跳转到需要的路由
                  MaterialPageRoute(
                      builder: (BuildContext context) => Page(title: 'About')));
            })
      ])),
    );
  }
}

class Page extends StatelessWidget {
  final String title;
  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 标题居中
        centerTitle: true,
        title: Text(title),
      ),
      body: Container(child: Center(child: Text(title + 'Page'))),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            // 返回上一个路由
            Navigator.pop(context);
          }),
    );
  }
}
