import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  CheckboxDemo({Key key}) : super(key: key);

  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool checkboxItemA = true;
  bool checkboxItemB = true;
  void checkboxValueSelectedA(value) {
    setState(() {
      checkboxItemA = value;
    });
  }

  void checkboxValueSelectedB(value) {
    setState(() {
      checkboxItemB = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CheckboxDemo')),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CheckboxListTile(
                value: checkboxItemA,
                onChanged: checkboxValueSelectedA,
                title: Text('Checkbox Item A'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.bookmark),
                selected: checkboxItemA,
                activeColor: Colors.blue[300],
                //钩子选中的颜色
                checkColor: Colors.white,
              ),
              CheckboxListTile(
                value: checkboxItemB,
                onChanged: checkboxValueSelectedB,
                title: Text('Checkbox Item B'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.bookmark),
                selected: checkboxItemB,
                activeColor: Colors.blue[300],
                //钩子选中的颜色
                checkColor: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Checkbox(
                  //   value: checkboxItemA,
                  //   onChanged: checkboxValueSelected,
                  //   //复选框选中的颜色
                  //   activeColor: Colors.black,
                  // ),
                ],
              ),
            ],
          ),
        ));
  }
}
