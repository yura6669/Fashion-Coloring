import 'package:fashion_coloring/paint/GirlInADress.dart';
import 'package:fashion_coloring/paint/GirlOnAUnicornFav.dart';
import 'package:fashion_coloring/paint/GirlOnAUnicornNoFav.dart';
import 'package:fashion_coloring/paint/GirlWithGlassesFav.dart';
import 'package:fashion_coloring/paint/Unicorn.dart';
import 'package:fashion_coloring/paint/UnicornNoFav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarMyWorks extends StatefulWidget {
  @override
  _TabBarMyWorksState createState() => _TabBarMyWorksState();
}

class _TabBarMyWorksState extends State<TabBarMyWorks> {
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
                    GirlInADress(),
                    GirlOnAUnicornFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlInADress(),
                    UnicornNoFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlWithGlassesFav(),
                    GirlInADress(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlOnAUnicornNoFav(),
                    GirlInADress(),
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
            ],
          ),
        ),
      ),
    );
  }
}
