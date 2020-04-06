import 'package:flutter/material.dart';
import '../model/list_data.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
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
                listDatas[index].title,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 4),
              Text(
                listDatas[index].des,
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
                    builder: (context) => listDatas[index].widgetName));
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
          itemCount: listDatas.length,
          itemBuilder: _listItemBuilder,
        ));
  }
}
