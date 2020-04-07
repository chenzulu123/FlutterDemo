import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int radioGroupA = 0;
  void handleRadioValueChanged(value) {
    setState(() {
      radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RadioDemo')),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //设置宽度
            Text('这是设置了宽度的：'),
            Container(
              width: 250,
              child: RadioListTile(
                value: 0,
                groupValue: radioGroupA,
                onChanged: handleRadioValueChanged,
                title: Text('Options A'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.filter_1),
                selected: radioGroupA == 0,
                activeColor: Colors.blue[400],
              ),
            ),
            Container(
              width: 250,
              child: RadioListTile(
                value: 1,
                groupValue: radioGroupA,
                onChanged: handleRadioValueChanged,
                title: Text('Options B'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.filter_2),
                selected: radioGroupA == 1,
                activeColor: Colors.blue[400],
              ),
            ),
            SizedBox(height: 20,),
            Text('这是没有设置宽度的:'),
            RadioListTile(
              value: 2,
              groupValue: radioGroupA,
              onChanged: handleRadioValueChanged,
              title: Text('Options C'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_3),
              selected: radioGroupA == 2,
              activeColor: Colors.blue[400],
            ),
            RadioListTile(
              value: 3,
              groupValue: radioGroupA,
              onChanged: handleRadioValueChanged,
              title: Text('Options D'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_4),
              selected: radioGroupA == 3,
              activeColor: Colors.blue[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}
