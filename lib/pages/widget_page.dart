import '../model/widget_list.dart';
import 'package:flutter/material.dart';

class WidgetPage extends StatefulWidget {
  WidgetPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      padding: EdgeInsets.only(left: 16),
      child: Stack(
        children: <Widget>[
          Column(
            //设置主轴的对齐方式
            mainAxisAlignment: MainAxisAlignment.start,
            //设置交叉轴的对齐方式
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 8),
              Text(
                widgetLists[index].title,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 4),
              Text(
                widgetLists[index].des,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 8),
            ],
          ),
          Positioned.fill(
              child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.white.withOpacity(0.3),
              highlightColor: Colors.white.withOpacity(0.1),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => widgetLists[index].widgetName));
              },
            ),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: widgetLists.length,
          itemBuilder: _listItemBuilder,
        ));
  }
}
