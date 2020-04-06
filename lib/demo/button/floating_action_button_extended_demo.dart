import 'package:flutter/material.dart';

class FloatingActionButtonExtendedDemo extends StatelessWidget {
  const FloatingActionButtonExtendedDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        //去除按钮的阴影效果
        elevation: 0,
        icon: Icon(Icons.arrow_back),
        label: Text('返回'));
    return Scaffold(
      appBar: AppBar(title: Text('FloatingActionButtonExtendedDemo')),
      body: Container(child: Center(child: Text('带文字和图标的悬浮按钮'))),
      floatingActionButton: _floatingActionButtonExtended,
    );
  }
}
