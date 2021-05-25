import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SubscriptionMonthly extends StatefulWidget {
  @override
  _SubscriptionMonthlyState createState() => _SubscriptionMonthlyState();
}

class _SubscriptionMonthlyState extends State<SubscriptionMonthly> {
  bool _btn = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 16),
            width: screenWidth < 600 ? size.width * 0.82 : 315,
            height: screenHeight < 600 ? size.height * 0.14 : 74,
            decoration: BoxDecoration(
                border: Border.all(
                    color: _btn ? Colors.grey[200] : HexColor('#DE91B4')),
                color: _btn ? Colors.white : Colors.pink[50],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16, left: 16),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Mounthly',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 16, bottom: 11),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      '9,99 USA Per Month',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 24,
                    width: 89,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: EdgeInsets.only(top: 12, right: 12),
                    child: Center(
                      child: Text(
                        _btn ? '' : '7 days FREE',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: HexColor('#DE91B4')),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          _btn
              ? Container()
              : Container(
                  padding: EdgeInsets.only(
                      top: 4, right: screenWidth < 500 ? 10 : 78, bottom: 16),
                  child: Text(
                    _btn
                        ? ''
                        : '*We will send the push notification before period ends',
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                )
        ],
      ),
      onTap: () {
        setState(() {
          _btn = !_btn;
        });
      },
    );
  }
}
