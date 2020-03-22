import 'package:flutter/material.dart';
import '../model/post.dart';
import './post_show.dart';
class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              //设置图片的显示比例
              // AspectRatio(
              //   aspectRatio:16/9,
              //   child: Image.network(posts[index].imgUrl), 
              // ),
              Image.network(posts[index].imgUrl),
              SizedBox(height: 16),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subhead,
              )
            ],
          ),
          Positioned.fill(
              child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.white.withOpacity(0.3),
              highlightColor: Colors.white.withOpacity(0.1),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>PostShow(post:posts[index]))
                );
              },
            ),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
