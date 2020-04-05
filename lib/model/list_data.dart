import '../demo/form_demo.dart';

import '../demo/sliver_demo.dart';

import '../demo/basic_demo.dart';
import 'package:flutter/material.dart';
import '../demo/listview_demo.dart';

class ListData {
  const ListData({this.title, this.des, this.widgetName});

  final String title;
  final String des;
  final Widget widgetName;
}

final List<ListData> listDatas = [
  ListData(title: 'Basic', des: 'basic', widgetName: BasicDemo()),
  ListData(title: 'Sliver', des: 'sliver样例展示', widgetName: SliverDemo()),
  ListData(title: 'Form', des: 'form样例展示', widgetName: FormDemo()),
  ListData(title: 'ListView', des: 'list列表样例展示', widgetName: ListViewDemo())
];
