import 'package:fashion_coloring/paint/GirlInADressFav.dart';
import 'package:fashion_coloring/paint/GirlWithGlassesFav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarFavorite extends StatefulWidget {
  @override
  _TabBarFavoriteState createState() => _TabBarFavoriteState();
}

class _TabBarFavoriteState extends State<TabBarFavorite> {
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
                    GirlInADressFav(),
                    GirlWithGlassesFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlInADressFav(),
                    GirlInADressFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlWithGlassesFav(),
                    GirlInADressFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlInADressFav(),
                    GirlInADressFav(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GirlInADressFav(),
                    GirlWithGlassesFav(),
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
