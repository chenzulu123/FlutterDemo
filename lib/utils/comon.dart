import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/list_page.dart';
import '../pages/widget_page.dart';
import '../pages/about_us_page.dart';

// 获取当前标题
currentTitle(currentIndex) {
  switch (currentIndex) {
    case 0:
      return "主页";
    case 1:
      return "案例";
    case 2:
      return "常用组件";
    case 3:
      return "关于我们";
  }
}

// 获取当前页
HomePage homePage;
ListPage listPage;
WidgetPage widgetPage;
AboutUsPage aboutUsPageDemo;
currentPage(currentIndex) {
  switch (currentIndex) {
    case 0:
      if (homePage == null) {
        homePage = HomePage(
          title: "主页",
        );
      }
      return homePage;
    case 1:
      if (widgetPage == null) {
        widgetPage = WidgetPage(
          title: "新闻",
        );
      }
      return widgetPage;
    case 2:
      if (listPage == null) {
        listPage = ListPage(
          title: "产品",
        );
      }
      return listPage;
    case 3:
      if (aboutUsPageDemo == null) {
        aboutUsPageDemo = AboutUsPage(title: 'aboutUsPage');
      }
      return aboutUsPageDemo;
  }
}
