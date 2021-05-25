import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SliderTwo extends StatefulWidget {
  @override
  _SliderTwoState createState() => _SliderTwoState();
}

class _SliderTwoState extends State<SliderTwo> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: HexColor('F9F7F2'),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.only(top: 17, left: 15),
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
                'Ads-free experience',
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
