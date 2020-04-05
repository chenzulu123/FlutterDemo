import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  AboutUsPage({Key key,this.title}) : super(key: key);
  final String title;

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Text('关于我们'),
       ),
    );
  }
}