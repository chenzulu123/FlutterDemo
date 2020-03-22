import 'package:flutter/material.dart';
class BlocDemo extends StatelessWidget {
  const BlocDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        // 标题居中
        centerTitle: true,
        title:Text('BlocDemo'),
      )
    );
  }
}