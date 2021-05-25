import 'package:fashion_coloring/paint/GirlInADress.dart';
import 'package:fashion_coloring/paint/GirlInADressFav.dart';
import 'package:fashion_coloring/paint/GirlInADressNoSub.dart';
import 'package:fashion_coloring/paint/GirlOnAUnicornFav.dart';
import 'package:fashion_coloring/paint/GirlOnAUnicornNoSub.dart';
import 'package:fashion_coloring/paint/GirlWithGlasses.dart';
import 'package:fashion_coloring/paint/Unicorn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarFashion extends StatefulWidget {
  @override
  _TabBarFashionState createState() => _TabBarFashionState();
}

class _TabBarFashionState extends State<TabBarFashion> {
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
                    GirlInADressNoSub(),
                    GirlWithGlasses(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlOnAUnicornFav(),
                    GirlInADressFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlOnAUnicornNoSub(),
                    GirlOnAUnicornFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlInADress(),
                    Unicorn(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlOnAUnicornFav(),
                    GirlInADressNoSub(),
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
