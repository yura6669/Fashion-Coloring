import 'package:fashion_coloring/paint/GirlInADress.dart';
import 'package:fashion_coloring/paint/GirlInADressFav.dart';
import 'package:fashion_coloring/paint/GirlInADressNoSub.dart';
import 'package:fashion_coloring/paint/GirlOnAUnicornFav.dart';
import 'package:fashion_coloring/paint/GirlOnAUnicornNoSub.dart';
import 'package:fashion_coloring/paint/GirlWithGlasses.dart';
import 'package:fashion_coloring/paint/Unicorn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarInterior extends StatefulWidget {
  @override
  _TabBarInteriorState createState() => _TabBarInteriorState();
}

class _TabBarInteriorState extends State<TabBarInterior> {
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
                    Unicorn(),
                    GirlWithGlasses(),
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
                    GirlOnAUnicornFav(),
                    GirlOnAUnicornNoSub(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlInADressNoSub(),
                    GirlInADressFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlWithGlasses(),
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
