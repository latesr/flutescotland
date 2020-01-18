import 'package:flutter/material.dart';

import './pages/page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: RootPage('Scottish International Flute Summer School'),
    );
  }
}

class RootPage extends StatelessWidget {
  final String title;
  const RootPage(this.title);
  static const List<Page> pages = [
    Home("Home"),
    Story("Story"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          bottom: TabBar(tabs: pages.map((p) => Tab(text: p.title)).toList()),
        ),
        body: TabBarView(
          children: pages,
        ),
      ),
    );
  }
}
