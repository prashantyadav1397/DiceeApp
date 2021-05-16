import 'dart:async';

import 'package:DiceeApp/diceCount.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => DiceCount()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xFF343247),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/dice.png'),
                  height: 120.0,
                  width: 120.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Dicee'.toUpperCase(),
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
