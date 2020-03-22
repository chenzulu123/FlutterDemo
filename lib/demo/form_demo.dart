import 'package:flutter/material.dart';
class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 标题居中
        centerTitle: true,
        title:Text('输入框'),
      ),
      body: Theme(
        //设置自定义颜色，不继承主题颜色
        data: ThemeData(
          primaryColor:Colors.black
        ), 
        child: Container(
          padding: EdgeInsets.all(16),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFildDemo(),
            ],
          ),
        )
      )
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //主题颜色
      color: Theme.of(context).primaryColor,
    );
  }
}

// 文本输入框的案例
class TextFildDemo extends StatefulWidget {
  TextFildDemo({Key key}) : super(key: key);

  @override
  _TextFildDemoState createState() => _TextFildDemoState();
}

class _TextFildDemoState extends State<TextFildDemo> {
  //文本控制器
  final textEditingController = TextEditingController();
  // 使用完进行资源注销，确保手机性能
  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() { 
    super.initState();
    //设置文本控制器的初始值
    textEditingController.text = 'hi';
    //监听文件控制器的值
    textEditingController.addListener(
      (){
        debugPrint('input:${textEditingController.text}');
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      //文本框内容变化时触发的方法
      // onChanged: (value){
      //   debugPrint('input:$value');
      // },
      controller: textEditingController,
      //键盘确定按钮触发的方法
      onSubmitted: (value){
        debugPrint('submit:$value');
      },
      decoration: InputDecoration(
        // 设置图标
        icon:Icon(Icons.subject),
        // 设置label提示
        labelText: 'title',
        // 输入提示语
        hintText: 'Enter the post title.',
        //输入框不显示边框
        // border: InputBorder.none
        // 设置边框
        // border: OutlineInputBorder(),
        // 灰色背景
        filled: true


      ),
    );
  }
}