import 'package:fashion_coloring/Dashboard.dart';
import 'package:fashion_coloring/Home.dart';
import 'package:flutter/material.dart';

import 'Subscription.dart';

void main() => runApp(FashionColoringApp());

class FashionColoringApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Stolzl', primarySwatch: Colors.teal),
      home: FashionColoring(),
      routes: {
        '/Subscription': (content) => Subscription(),
      },
    );
  }
}

// ignore: must_be_immutable
class FashionColoring extends StatefulWidget {
  FashionColoring({Key key, this.title}) : super(key: key);
  String title;
  @override
  _FashionColoringState createState() => _FashionColoringState();
}

class _FashionColoringState extends State<FashionColoring>
    with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.dashboard_outlined)),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Home(),
          Dashboard(),
        ],
        controller: _tabController,
      ),
    );
  }
}
