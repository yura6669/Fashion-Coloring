import 'package:fashion_coloring/Subscription.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubscriptionBtn extends StatefulWidget {
  @override
  _SubscriptionBtnState createState() => _SubscriptionBtnState();
}

class _SubscriptionBtnState extends State<SubscriptionBtn> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image(
        image: AssetImage('assets/icons/subscription.png'),
      ),
      onPressed: () {
        Route route = MaterialPageRoute(builder: (context) => Subscription());
        Navigator.push(context, route);
      },
    );
  }
}
