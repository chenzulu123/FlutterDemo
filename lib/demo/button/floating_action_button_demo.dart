import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.add, color: Colors.white),
      //按钮的阴影效果
      elevation: 0,
      //设置按钮的颜色
      backgroundColor: Colors.blue[300],
    );
    return Scaffold(
      appBar: AppBar(title: Text('FloatingActionButtonDemo')),
      body: Container(child: Center(child: Text('FloatingActionButtonDemo'))),
      //按钮靠有显示
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      //按钮居中悬浮
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _floatingActionButton,
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 80),
        //给按钮设置一个缺口
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
