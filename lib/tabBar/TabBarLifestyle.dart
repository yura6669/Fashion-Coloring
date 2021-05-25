import 'package:fashion_coloring/paint/GirlInADress.dart';
import 'package:fashion_coloring/paint/GirlInADressFav.dart';
import 'package:fashion_coloring/paint/GirlInADressNoSub.dart';
import 'package:fashion_coloring/paint/GirlOnAUnicornFav.dart';
import 'package:fashion_coloring/paint/GirlOnAUnicornNoSub.dart';
import 'package:fashion_coloring/paint/GirlWithGlasses.dart';
import 'package:fashion_coloring/paint/Unicorn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarLifestyle extends StatefulWidget {
  @override
  _TabBarLifestyleState createState() => _TabBarLifestyleState();
}

class _TabBarLifestyleState extends State<TabBarLifestyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GirlOnAUnicornNoSub(),
                    GirlInADress(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlWithGlasses(),
                    GirlOnAUnicornFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Unicorn(),
                    GirlOnAUnicornFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlInADressNoSub(),
                    Unicorn(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlInADressFav(),
                    GirlInADress(),
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
