import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  //打开确认提示框
  _openAlertDialog() {
    showDialog(
        context: context,
        //点击空白位置无法关闭弹窗
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            // 提示框的标题
            title: Text('AlertDialog'),
            // 提示框的内容
            content: Text('Are you sure about this?'),
            // 提示框的按钮动作
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancle',style: TextStyle(color:Colors.grey),)),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK',style: TextStyle(color:Colors.grey),)),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlertDialogDemo')),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: Text('Open AlertDialog'),
                      onPressed: _openAlertDialog),
                ],
              ),
            ]),
      ),
    );
  }
}
