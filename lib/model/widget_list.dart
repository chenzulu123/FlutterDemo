import '../demo/material_compoment.dart';
import 'package:flutter/material.dart';

class WidgetList {
  const WidgetList({this.title, this.des, this.widgetName});

  final String title;
  final String des;
  final Widget widgetName;
}

final List<WidgetList> widgetLists = [
  WidgetList(
      title: 'MaterialComponent',
      des: 'Material页面样例展示',
      widgetName: MaterialComponent()),
];
