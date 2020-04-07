import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('Button'),
          // 设置按钮的渐没效果
          splashColor: Colors.grey,
          textColor: Colors.blue[300],
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Button'),
          // 设置按钮的渐没效果
          splashColor: Colors.grey,
          textColor: Colors.blue[300],
        )
      ],
    );
    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text('Button'),
          // 设置按钮的渐没效果
          splashColor: Colors.grey,
          textColor: Colors.blue[300],
        ),
        //给按钮只是间距
        SizedBox(width: 16),
        RaisedButton.icon(
          onPressed: () {},
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

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
            data: Theme.of(context).copyWith(
                buttonColor: Theme.of(context).accentColor,
                buttonTheme: ButtonThemeData(
                    textTheme: ButtonTextTheme.primary,
                    //设置按钮为椭圆形按钮
                    shape: StadiumBorder())),
            child: OutlineButton(
              onPressed: () {},
              child: Text('Button'),
              //设置按钮的渐没效果
              splashColor: Colors.white,
              //设置按钮的描边效果
              borderSide: BorderSide(color: Colors.blue[300]),
              //按钮的字体颜色
              textColor: Colors.blue[300],
            )),
        //给按钮只是间距
        SizedBox(width: 16),
        OutlineButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Button'),
          //给按钮设置阴影效果
          //设置按钮的渐没效果
          splashColor: Colors.grey,
          textColor: Colors.blue[300],
        )
      ],
    );
    //设置宽高的按钮
    final Widget fixedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            width: 130,
            height: 35,
            child: OutlineButton(
              onPressed: () {},
              child: Text('Button'),
              //给按钮设置阴影效果
              //设置按钮的渐没效果
              splashColor: Colors.grey,
              textColor: Colors.blue[300],
            ))
      ],
    );

    //设置宽高的按钮
    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: OutlineButton(
          onPressed: () {},
          child: Text('Button'),
          //给按钮设置阴影效果
          //设置按钮的渐没效果
          splashColor: Colors.grey,
          textColor: Colors.blue[300],
        ))
      ],
    );

    //设置宽高的按钮
    final Widget expandedButtonDemo2 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: OutlineButton(
          onPressed: () {},
          child: Text('Button'),
          //给按钮设置阴影效果
          //设置按钮的渐没效果
          splashColor: Colors.grey,
          textColor: Colors.blue[300],
        )),
        SizedBox(
          width: 16,
        ),
        Expanded(
            child: OutlineButton(
          onPressed: () {},
          child: Text('Button'),
          //给按钮设置阴影效果
          //设置按钮的渐没效果
          splashColor: Colors.grey,
          textColor: Colors.blue[300],
        ))
      ],
    );

    //设置宽高的按钮
    final Widget expandedButtonDemo3 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: OutlineButton(
          onPressed: () {},
          child: Text('Button'),
          //给按钮设置阴影效果
          //设置按钮的渐没效果
          splashColor: Colors.grey,
          textColor: Colors.blue[300],
        )),
        SizedBox(
          width: 16,
        ),
        Expanded(
            child: OutlineButton(
          onPressed: () {},
          child: Text('Button'),
          //给按钮设置阴影效果
          //设置按钮的渐没效果
          splashColor: Colors.grey,
          textColor: Colors.blue[300],
        )),
        SizedBox(
          width: 16,
        ),
        Expanded(
            child: OutlineButton(
          onPressed: () {},
          child: Text('Button'),
          //给按钮设置阴影效果
          //设置按钮的渐没效果
          splashColor: Colors.grey,
          textColor: Colors.blue[300],
        ))
      ],
    );

    //设置宽高的按钮
    final Widget expandedButtonDemo4 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: OutlineButton(
          onPressed: () {},
          child: Text('Button'),
          //给按钮设置阴影效果
          //设置按钮的渐没效果
          splashColor: Colors.grey,
          textColor: Colors.blue[300],
        )),
        SizedBox(
          width: 16,
        ),
        Expanded(
            //flex默认值为1
            flex: 2,
            child: OutlineButton(
              onPressed: () {},
              child: Text('Button'),
              //给按钮设置阴影效果
              //设置按钮的渐没效果
              splashColor: Colors.grey,
              textColor: Colors.blue[300],
            ))
      ],
    );

    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ButtonBar(children: <Widget>[
          OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            //给按钮设置阴影效果
            //设置按钮的渐没效果
            splashColor: Colors.grey,
            textColor: Colors.blue[300],
          ),
          OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            //给按钮设置阴影效果
            //设置按钮的渐没效果
            splashColor: Colors.grey,
            textColor: Colors.blue[300],
          )
        ])
      ],
    );

    return Scaffold(
        appBar: AppBar(title: Text('ButtonDemo')),
        body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  flatButtonDemo,
                  raisedButtonDemo,
                  outlineButtonDemo,
                  fixedWidthButtonDemo,
                  SizedBox(
                    height: 8,
                  ),
                  expandedButtonDemo,
                  SizedBox(
                    height: 8,
                  ),
                  expandedButtonDemo2,
                  SizedBox(
                    height: 8,
                  ),
                  expandedButtonDemo3,
                  SizedBox(
                    height: 8,
                  ),
                  expandedButtonDemo4,
                   SizedBox(
                    height: 8,
                  ),
                  buttonBarDemo
                ])));
  }
}

class _WidgetDemo extends StatelessWidget {
  const _WidgetDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('_WidgetDemo')),
        body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[],
                  )
                ])));
  }
}
