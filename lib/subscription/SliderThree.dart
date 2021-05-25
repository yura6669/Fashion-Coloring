import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SliderThree extends StatefulWidget {
  @override
  _SliderThreeState createState() => _SliderThreeState();
}

class _SliderThreeState extends State<SliderThree> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: HexColor('FEE9FA'),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.only(top: 17, left: 15, right: 20),
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
                'Notification before next charge',
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
