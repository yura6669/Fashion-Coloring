import 'package:fashion_coloring/paint/GirlInADress.dart';
import 'package:fashion_coloring/paint/GirlInADressFav.dart';
import 'package:fashion_coloring/paint/GirlInADressNoSub.dart';
import 'package:fashion_coloring/paint/GirlOnAUnicornFav.dart';
import 'package:fashion_coloring/paint/GirlOnAUnicornNoSub.dart';
import 'package:fashion_coloring/paint/GirlWithGlasses.dart';
import 'package:fashion_coloring/paint/Unicorn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarNew extends StatefulWidget {
  @override
  _TabBarNewState createState() => _TabBarNewState();
}

class _TabBarNewState extends State<TabBarNew> {
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
                    GirlWithGlasses(),
                    GirlOnAUnicornFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlInADress(),
                    GirlInADressNoSub(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlOnAUnicornNoSub(),
                    GirlInADressFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlInADressFav(),
                    GirlInADressNoSub(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Unicorn(),
                    GirlWithGlasses(),
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
