import 'package:fashion_coloring/subscription/SubscriptionMonthly.dart';
import 'package:fashion_coloring/subscription/SubscriptionWeekly.dart';
import 'package:fashion_coloring/subscription/SubscriptionYearly.dart';
import 'package:fashion_coloring/subscription/SliderOne.dart';
import 'package:fashion_coloring/subscription/SliderThree.dart';
import 'package:fashion_coloring/subscription/SliderTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Subscription',
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Image(
              image: AssetImage('assets/icons/close.png'),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(bottom: 83),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SliderOne(),
                          SliderTwo(),
                          SliderThree(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 270,
                  margin: EdgeInsets.only(top: 29),
                  child: Text(
                    'Choose the plan that fits to you the best:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SubscriptionWeekly(),
              SubscriptionMonthly(),
              SubscriptionYearly(),
              Container(
                margin: EdgeInsets.only(top: 65),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Text(
                          'Privacy&Policy',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Text(
                          'Restore Purchase',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
