import 'package:fashion_coloring/SubscriptionBtn.dart';
import 'package:flutter/material.dart';

class GirlInADress extends StatefulWidget {
  @override
  _GirlInADressState createState() => _GirlInADressState();
}

class _GirlInADressState extends State<GirlInADress> {
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
                'assets/images/girl_in_a_dress.png',
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
              Align(alignment: Alignment.topLeft, child: SubscriptionBtn()),
            ],
          )),
    );
  }
}
