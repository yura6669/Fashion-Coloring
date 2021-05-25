import 'package:flutter/material.dart';

class GirlOnAUnicornNoSub extends StatefulWidget {
  @override
  _GirlOnAUnicornNoSubState createState() => _GirlOnAUnicornNoSubState();
}

class _GirlOnAUnicornNoSubState extends State<GirlOnAUnicornNoSub> {
  bool _favorite = true;
  AssetImage _favoriteOff = AssetImage('assets/icons/favoriteOff.png');
  AssetImage _favoriteOn = AssetImage('assets/icons/favoriteOn.png');
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          print('Image');
        });
      },
      child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(3))),
          margin: EdgeInsets.only(top: 10, left: 15),
          width: size.width * 0.40,
          child: Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/girl_on_a_unicorn.png',
                fit: BoxFit.fill,
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    icon: Image(
                      image: _favorite ? _favoriteOff : _favoriteOn,
                    ),
                    onPressed: () {
                      setState(() {
                        _favorite = !_favorite;
                      });
                    }),
              ),
            ],
          )),
    );
  }
}
