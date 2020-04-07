import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  ChipDemo({Key key}) : super(key: key);

  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: <Widget>[
                Chip(label: Text('Life')),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('chenzulu'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text(
                      '路',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Chip(
                  label: Text('chenzulu'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1305353222,2352820043&fm=26&gp=0.jpg"),
                    // child: Text('路',style: TextStyle(color:Colors.white),),
                  ),
                ),
                Chip(
                  label: Text('delete'),
                  backgroundColor: Colors.blue[300],
                ),
                Divider(
                  //颜色
                  color: Colors.grey,
                  //高度
                  height: 32,
                  //缩进
                  indent: 8,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
