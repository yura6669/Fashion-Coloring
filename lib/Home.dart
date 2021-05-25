import 'package:fashion_coloring/SubscriptionBtn.dart';
import 'package:fashion_coloring/tabBar/TabBarFashion.dart';
import 'package:fashion_coloring/tabBar/TabBarFoods.dart';
import 'package:fashion_coloring/tabBar/TabBarInterior.dart';
import 'package:fashion_coloring/tabBar/TabBarLifestyle.dart';
import 'package:fashion_coloring/tabBar/TabBarNew.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> with TickerProviderStateMixin {
  TabController _homePageController;
  @override
  void initState() {
    super.initState();
    _homePageController = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _homePageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home',
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Image(
            image: AssetImage('assets/icons/settings.png'),
          ),
          onPressed: () {},
        ),
        actions: <Widget>[SubscriptionBtn()],
      ),
      body: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15, left: 15),
              child: TabBar(
                isScrollable: true,
                controller: _homePageController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: HexColor('#DE91B4'),
                ),
                tabs: [
                  Container(
                    child: Column(children: [
                      Tab(
                        icon: Icon(
                          Icons.add_box_outlined,
                        ),
                      ),
                      Text(
                        'New',
                        style: TextStyle(fontSize: 13),
                      ),
                    ]),
                  ),
                  Column(children: [
                    Tab(
                      icon: Icon(
                        Icons.face_outlined,
                      ),
                    ),
                    Text(
                      'Fashion',
                      style: TextStyle(fontSize: 13),
                    ),
                  ]),
                  Column(children: [
                    Tab(icon: Icon(Icons.king_bed_outlined)),
                    Text(
                      'Interier',
                      style: TextStyle(fontSize: 13),
                    ),
                  ]),
                  Column(children: [
                    Tab(icon: Icon(Icons.bakery_dining)),
                    Text(
                      'Foods',
                      style: TextStyle(fontSize: 13),
                    ),
                  ]),
                  Column(children: [
                    Tab(icon: Icon(Icons.airplanemode_active)),
                    Text(
                      'Lifestyle',
                      style: TextStyle(fontSize: 13),
                    ),
                  ]),
                ],
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
              ),
            ),
            Container(
              height: screenHeight < 600
                  ? screenHeight * 0.54
                  : screenHeight * 0.68,
              margin: EdgeInsets.only(bottom: 13),
              child: TabBarView(
                controller: _homePageController,
                children: <Widget>[
                  Container(
                    child: TabBarNew(),
                  ),
                  Container(
                    child: TabBarFashion(),
                  ),
                  Container(
                    child: TabBarInterior(),
                  ),
                  Container(
                    child: TabBarFoods(),
                  ),
                  Container(
                    child: TabBarLifestyle(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
