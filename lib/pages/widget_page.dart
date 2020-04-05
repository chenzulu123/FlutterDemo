import 'package:flutter/material.dart';
class WidgetPage extends StatefulWidget {
  WidgetPage({Key key,this.title}) : super(key: key);
  final String title;

  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Text('WidgetPage'),
       ),
    );
  }
}