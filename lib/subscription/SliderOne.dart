import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SliderOne extends StatefulWidget {
  @override
  _SliderOneState createState() => _SliderOneState();
}

class _SliderOneState extends State<SliderOne> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: HexColor('#CEFFE9'),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.only(top: 17, left: 20),
      width: screenWidth < 600 ? size.width * 0.75 : 310,
      height: screenHeight < 600 ? size.height * 0.28 : 180,
      child: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/subscription_one.png',
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.center,
            child: Center(
              child: Text(
                'Access to all Premium content and features',
                style: TextStyle(
                    fontSize: screenWidth < 400 ? 15.5 : 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
