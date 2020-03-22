# chenzulu_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### 介绍
这是一个学习flutter项目的demo，通过这个项目可以学习相关的知识点。熟练掌握以后就可以做基本的flutter项目了，可以从事简单的安卓开发。

### 目录结构介绍

### flutter开发代码提示的vscode插件
1、Flutter Widget Snippets
2、Awesome Flutter Snippets

### Flutter相关知识点

1、实现不同平台的标题居中
```
appBar:AppBar(
    // 标题居中
    centerTitle: true,
    title:Text('BlocDemo'),
)
```
2、不显示debug标识
MaterialApp中添加debugShowCheckedModeBanner属性，值为false