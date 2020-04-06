import '../demo/button/floating_action_button_extended_demo.dart';

import '../demo/button/floating_action_button_demo.dart';
import '../demo/form/form_field_demo.dart';
import '../demo/navigator_demo.dart';
import '../demo/snack_bar_demo.dart';
import '../demo/expansion_panel_demo.dart';
import '../demo/button/popup_menu_button_demo.dart';
import '../demo/bloc/bloc_demo.dart';
import '../demo/dialog/alert_dialog_demo.dart';
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
  ListData(title: 'Basic', des: 'Basic', widgetName: BasicDemo()),
  ListData(title: 'Bloc', des: 'Bloc样例展示', widgetName: BlocDemo()),
  ListData(
      title: 'PopupMenuButton',
      des: 'PopupMenuButton样例展示',
      widgetName: PopupMenuButtonDemo()),
  ListData(title: 'Sliver', des: 'Sliver样例展示', widgetName: SliverDemo()),
  ListData(
      title: 'AlertDialog',
      des: 'AlertDialog样例展示',
      widgetName: AlertDialogDemo()),
  ListData(title: 'Form', des: 'Form样例展示', widgetName: FormDemo()),
  ListData(
      title: 'FormField', des: 'FormField样例展示', widgetName: FormFieldDemo()),
  ListData(
      title: 'FloatingActionButtonDemo',
      des: 'FloatingActionButton悬浮按钮样例展示',
      widgetName: FloatingActionButtonDemo()),
  ListData(
      title: 'FloatingActionButtonExtendedDemo',
      des: 'FloatingActionButtonExtendedDemo悬浮按钮样例展示',
      widgetName: FloatingActionButtonExtendedDemo()),
  ListData(
      title: 'ExpansionPanel',
      des: 'ExpansionPanel样例展示',
      widgetName: ExpansionPanelDemo()),
  ListData(title: 'ListView', des: 'List列表样例展示', widgetName: ListViewDemo()),
  ListData(
      title: 'Navigator', des: 'Navigator样例展示', widgetName: NavigatorDemo()),
  ListData(title: 'SnackBar', des: 'SnackBar样例展示', widgetName: SnackBarDemo()),
  ListData(title: 'Text', des: 'Text样例展示', widgetName: TextDemo())
];
