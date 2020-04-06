import 'package:flutter/material.dart';

import 'button/button_demo.dart';
import 'button/floating_action_button_demo.dart';
import 'button/floating_action_button_extended_demo.dart';

class MaterialComponent extends StatelessWidget {
  const MaterialComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MaterialComponent')),
      body: ListView(children: <Widget>[
        ListItem(
          title: 'ButtonDemo',
          page: ButtonDemo(),
        ),
         ListItem(
          title: 'FloatingActionButtonDemo',
          page: FloatingActionButtonDemo(),
        ),
        ListItem(
          title: 'FloatingActionButtonExtendedDemo',
          page: FloatingActionButtonExtendedDemo(),
        )
      ]),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  const ListItem({Key key, this.title, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => page),
          );
        });
  }
}
