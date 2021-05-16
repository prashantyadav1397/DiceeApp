import 'package:flutter/material.dart';
import 'dart:math';

class DiceApp extends StatefulWidget {
  final int dice;

  DiceApp({@required this.dice});
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int fdn = Random().nextInt(6) + 1;
  int sdn = Random().nextInt(6) + 1;
  int tdn = Random().nextInt(6) + 1;

  void diceRoll() {
    setState(() {
      fdn = Random().nextInt(6) + 1;
      sdn = Random().nextInt(6) + 1;
      tdn = Random().nextInt(6) + 1;
    });
  }

  Widget getDice(int diceCount) {
    Widget dice;
    if (diceCount == 1) {
      dice = Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Image.asset(
                'images/dice$fdn.png',
                height: 160,
                width: 160,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 90.0),
                    child: OutlineButton(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      child: Text(
                        "Roll Dice".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        diceRoll();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
    if (diceCount == 2) {
      dice = Column(
        children: [
          Flexible(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: Image.asset('images/dice$fdn.png',
                          height: 160, width: 160),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: Image.asset('images/dice$sdn.png',
                          height: 160, width: 160),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 90.0),
                    child: OutlineButton(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      child: Text(
                        "Roll Dice".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        diceRoll();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
    if (diceCount == 3) {
      dice = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 5,
            child: Column(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/dice$fdn.png'),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/dice$sdn.png'),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/dice$tdn.png'),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 90.0),
                    child: OutlineButton(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      child: Text(
                        "Roll Dice".toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        diceRoll();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
    return dice;
  }

  @override
  Widget build(BuildContext context) {
    var diceCount = widget.dice;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dicee".toUpperCase()),
        ),
        body: MediaQuery(
          data: MediaQueryData(textScaleFactor: 1.0),
          child: Container(
            color: Color(0xFF343247),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: getDice(diceCount),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
