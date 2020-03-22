import 'package:chenzulu_flutter/model/post.dart';
import 'package:flutter/material.dart';

class SliverDemo extends StatelessWidget {
  const SliverDemo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      //设置标题
      SliverAppBar(
        // 标题居中
        centerTitle: true,
        title: Text("CHENZULU"),
        // 固定标题栏
        pinned: true,
        // 设置标题栏为滚动
        // floating: true,
        //设置标题区域伸展的高度
        // expandedHeight: 100,
        // flexibleSpace: FlexibleSpaceBar(
        //   title:Text(
        //     '伸展区域的标题',
        //     style: TextStyle(
        //       fontSize:14,
        //       color:Colors.grey
        //     )
        //   ),
        // ),
      ),
      //让内容显示安全区域内
      SliverSafeArea(
          //使用SliverPadding给SliverGrid增加内边距
          sliver: SliverPadding(
        // 设置所有的内边距为8
        padding: EdgeInsets.all(16),
        // 组件为sliver
        sliver: SliverListDemo(),
      ))
    ]));
  }
}

// 简单的列表视图
class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Material(
                // 设置
                // borderRadius: BorderRadius.circular(14),
                borderRadius: BorderRadius.circular(14),
                elevation: 14,
                shadowColor: Colors.grey.withOpacity(0.5),
                child: Stack(children: [
                  AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(
                        posts[index].imgUrl,
                        fit: BoxFit.cover,
                      )),
                  // 设置定位的组件
                  Positioned(
                    top: 32,
                    left: 32,
                    child: Column(
                        //设置交叉轴文字的对齐方式
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            posts[index].title,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Text(
                            posts[index].author,
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          )
                        ]),
                  ),
                ]),
              ));
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  const SliverGridDemo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // 设置每列显示的数量
          crossAxisCount: 2,
          // 设置交叉轴上的距离
          crossAxisSpacing: 8,
          // 设置主轴上的边距
          mainAxisSpacing: 8,
          //设置图像显示的比例
          childAspectRatio: 16 / 9),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
              child: Image.network(
            posts[index].imgUrl,
            fit: BoxFit.cover,
          ));
        },
        childCount: posts.length,
      ),
    );
  }
}
