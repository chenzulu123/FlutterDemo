import 'package:flutter/material.dart';
class FormFieldDemo extends StatelessWidget {
  const FormFieldDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title:Text('FormFieldDemo'),
      ),
      body: Container(
        // 设置内边距
        padding: EdgeInsets.all(16),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Register()
          ],
        )
      ),
    );
  }
}


//表单注册
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //设置获取所有表单的值
  final registerFormKey = GlobalKey<FormState>();
  String username,password;
  bool autovalidate = false;
  //保存方法
  void submitRegisterForm(){
    //调用表单的数据校验方法
    if(registerFormKey.currentState.validate()){
      //调用form表单的保存方法
      registerFormKey.currentState.save();
      debugPrint('username:$username');
      debugPrint('username:$password');
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Registering...'),
        )
      );
    }else{
      setState(() {
        autovalidate = true;
      });
    }
  }
  //用户名输入验证
  String validateUsername(value){
    if(value.isEmpty){
      return 'Username is required.';
    }
    return null;
  }
  //密码输入验证
  String validatePassword(value){
    if(value.isEmpty){
      return 'Password is required.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child:Column(
        children:<Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText:'Username',
              helperText: ''
            ),
            onSaved: (value){
              username = value;
            },
            //用户名字段校验规则
            validator: validateUsername,
            // 字段实时校验
            autovalidate: autovalidate,
          ),
          TextFormField(
            //隐藏输入内容
            obscureText: true,
            decoration: InputDecoration(
              labelText:'Password',
              helperText: ''
            ),
            onSaved: (value){
              password = value;
            },
            //密码字段校验规则
            validator: validatePassword,
            //是否开启字段的实时校验
            autovalidate: autovalidate,
          ),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              //按钮点击事件
              onPressed:submitRegisterForm,
              color: Theme.of(context).accentColor,
              child:Container(
                padding: EdgeInsets.only(top:5,bottom:5),
                child: Text(
                'Register',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ),
              // 去除阴影
              elevation: 0,
              padding: EdgeInsets.only(top:5,bottom:5),
            ),
          ),
        ]
      )
    );
  }
}