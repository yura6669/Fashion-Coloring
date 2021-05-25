import 'package:fashion_coloring/SubscriptionBtn.dart';
import 'package:fashion_coloring/tabBar/TabBarFovorite.dart';
import 'package:fashion_coloring/tabBar/TabBarMyWorks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<Dashboard>
    with TickerProviderStateMixin {
  TabController _dashboardPageController;
  @override
  void initState() {
    super.initState();
    _dashboardPageController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _dashboardPageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dashboard',
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
        padding: EdgeInsets.only(right: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 16, left: 16),
              child: Container(
                margin: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                padding: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
                height: 32,
                child: TabBar(
                  controller: _dashboardPageController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    color: Colors.white,
                  ),
                  tabs: [
                    Text(
                      'My works',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'Fovorite',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                  labelColor: HexColor('#DE91B4'),
                  unselectedLabelColor: Colors.black,
                ),
              ),
            ),
            Container(
              height: screenHeight < 600
                  ? screenHeight * 0.54
                  : screenHeight * 0.68,
              margin: EdgeInsets.only(bottom: 13),
              child: TabBarView(
                controller: _dashboardPageController,
                children: <Widget>[
                  Container(
                    child: TabBarMyWorks(),
                  ),
                  Container(
                    child: TabBarFavorite(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
