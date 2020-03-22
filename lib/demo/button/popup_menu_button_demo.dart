import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  PopupMenuButtonDemo({Key key}) : super(key: key);

  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentMenuItem = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButtonDemo'),
        //统一标题居中
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuItem),
                PopupMenuButton(
                  onSelected: (value) {
                    // 设置选中的值
                    setState(() {
                      _currentMenuItem = value;
                    });
                    print(value);
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(value: 'Home', child: Text('Home')),
                    PopupMenuItem(value: 'Discover', child: Text('Discover')),
                    PopupMenuItem(value: 'Community', child: Text('Community'))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
