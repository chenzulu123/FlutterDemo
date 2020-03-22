import 'package:flutter/material.dart';
class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: RichText(
            // 实现类似字符拼接的效果
            text: TextSpan(
                text: 'chenzulu',
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 34,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w100),
                children: [
              TextSpan(text: '@outlook'),
              TextSpan(text: '.com'),
            ])));
  }
}

class TextDemo extends StatelessWidget {
  //把文字样式设置为一个变量
  final TextStyle _textStyle = TextStyle(fontSize: 16, color: Colors.black87);
  @override
  Widget build(BuildContext context) {
    return Container(
      // 设置内边距
      padding: EdgeInsets.all(16),
      child: Text(
        '君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。',
        // 设置样式
        style: _textStyle,
        //设置文字最多显示的行数
        maxLines: 3,
        // 超出用省略号显示
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
