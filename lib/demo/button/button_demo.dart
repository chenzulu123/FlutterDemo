import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo =  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: (){}, 
                  child: Text('Button'),
                  // 设置按钮的渐没效果
                  splashColor: Colors.grey,
                  textColor: Colors.blue[300],
                ),
                FlatButton.icon(
                  onPressed: (){}, 
                  icon: Icon(Icons.add),
                  label: Text('Button'),
                  // 设置按钮的渐没效果
                  splashColor: Colors.grey,
                  textColor: Colors.blue[300],
                )
              ],
            );
    final Widget RaisedButtonDemo =  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){}, 
                  child: Text('Button'),
                  // 设置按钮的渐没效果
                  splashColor: Colors.grey,
                  textColor: Colors.blue[300],
                ),
                //给按钮只是间距
                SizedBox(width:16),
                RaisedButton.icon(
                  onPressed: (){}, 
                  icon: Icon(Icons.add),
                  label: Text('Button'),
                  //给按钮设置阴影效果
                  elevation: 12,
                  //设置按钮的渐没效果
                  splashColor: Colors.grey,
                  textColor: Colors.blue[300],
                )
              ],
            );
    return Scaffold(
      appBar:AppBar(
        title:Text('ButtonDemo')
      ),
      body:Container(
        padding: EdgeInsets.all(16),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            FlatButtonDemo,
            RaisedButtonDemo
          ]
        )
      )
    );
  }
}
class _WidgetDemo extends StatelessWidget {
  const _WidgetDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('_WidgetDemo')
      ),
      body:Container(
        padding: EdgeInsets.all(16),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            )
          ]
        )
      )
    );
  }
}