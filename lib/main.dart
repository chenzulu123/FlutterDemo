import 'package:flutter/material.dart';
import 'demo/basic_demo.dart';
import 'demo/bloc/bloc_demo.dart';
import 'demo/button/popup_menu_button_demo.dart';
import 'demo/dialog/alert_dialog_demo.dart';
import 'demo/expansion_panel_demo.dart';
import 'demo/form/form_field_demo.dart';
import 'demo/form_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/snack_bar_demo.dart';
import 'model/post.dart';
import 'demo/sliver_demo.dart';
import 'utils/comon.dart';
import 'utils/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CHENZULU',
        theme: ThemeData(
            // 设置appbar的背景颜色
            primarySwatch: Colors.yellow,
            //设置高亮选中的颜色
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70),
        home: MyHomePage(),
        // home: SliverDemo(),
        // home: NavigatorDemo(),
        // home: NavigatorDemo(),
        // home: ListViewDemo(),

        // ListViewDemo
        // 初始路由(默认打开的路由页面)
        initialRoute: '/home',
        //路由配置
        routes: route,
        //关闭appbar上的debug标识
        debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
        // 设置背景颜色
        color: Colors.white,
        //设置外边距
        margin: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            //网络图片的展示方式
            // Image.network(posts[index].imgUrl),
            // // 设置小空挡
            // SizedBox(height: 16),
            // 设置文字的样式
            Text(posts[index].title, style: Theme.of(context).textTheme.title),
            // Text(
            //   posts[index].author,
            //   style: Theme.of(context).textTheme.subtitle,
            // ),
            SizedBox(height: 16)
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // 标题居中显示
          centerTitle: true,
          title: Text(currentTitle(_currentIndex)),
          elevation: 0, //除去appbar的阴影
          //添加顶部tab栏
          // bottom: TabBar(
          //     unselectedLabelColor: Colors.black38,
          //     indicatorColor: Colors.black54,
          //     indicatorSize: TabBarIndicatorSize.label,
          //     indicatorWeight: 1,
          //     tabs: <Widget>[
          //       Tab(icon: Icon(Icons.local_florist)),
          //       Tab(icon: Icon(Icons.change_history)),
          //       Tab(icon: Icon(Icons.view_list)),
          //     ]),
        ),
        // body: ListView.builder(
        //   itemCount: posts.length,
        //   itemBuilder: _listItemBuilder,
        // ),
        // body: TabBarView(children: <Widget>[
        //   // Icon(Icons.local_florist,size: 128,color: Colors.black12,),
        //   ListViewDemo(),
        //   // Icon(Icons.change_history,size: 128,color: Colors.black12,),
        //   BasicDemo(),
        //   // Icon(Icons.directions_bike,size: 128,color: Colors.black12,),
        //   SliverDemo()
        // ]),
        body: currentPage(_currentIndex),
        //侧边栏
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            //展示用户信息
            UserAccountsDrawerHeader(
              //用户名称
              accountName:
                  Text('数码小哥哥', style: TextStyle(fontWeight: FontWeight.bold)),
              // 用户邮件
              accountEmail: Text("chenzulu@outlook.com"),
              // 用户头像
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'http://b-ssl.duitang.com/uploads/item/201509/16/20150916235616_NBY3F.jpeg')),
              decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage(
                        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1583598723159&di=eefff83a53088d3276f98316b883ade7&imgtype=0&src=http%3A%2F%2Ft-1.tuzhan.com%2F8cf95989c8d1%2Fc-1%2Fl%2F2012%2F12%2F01%2F13%2Fc88bf6af9ef74dbcb1b641ddd65425bb.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.6),
                        BlendMode.hardLight)),
              ),
            )
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                //选中的图标以及样式
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.blue[300],
                ),
                icon: Icon(Icons.home),
                title: Text('主页')),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('案例')),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text('常用组件')),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), title: Text('关于我们'))
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.blue[300],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
