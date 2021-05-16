import 'package:DiceeApp/dice.dart';
import 'package:flutter/material.dart';

class DiceCount extends StatefulWidget {
  @override
  _DiceCountState createState() => _DiceCountState();
}

class _DiceCountState extends State<DiceCount> {
  int diceCount = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF343247),
        appBar: AppBar(
          title: Text(
            'Dicee'.toUpperCase(),
          ),
        ),
        body: MediaQuery(
          data: MediaQueryData(textScaleFactor: 1.0),
          child: Container(
            color: Color(0xFF343247),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$diceCount',
                    style: TextStyle(fontSize: 200.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: FloatingButton(
                          icon: Icons.remove,
                          onPressed: () {
                            setState(() {
                              if (diceCount <= 1) {
                                diceCount = 1;
                              } else {
                                diceCount--;
                              }
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: FloatingButton(
                          icon: Icons.add,
                          onPressed: () {
                            setState(() {
                              if (diceCount >= 3) {
                                diceCount = 3;
                              } else {
                                diceCount++;
                              }
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  OutlineButton(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                    onPressed: () {
                      print(diceCount);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => DiceApp(
                            dice: diceCount,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Generate dice'.toUpperCase(),
                      style: TextStyle(fontSize: 15.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;

  FloatingButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.black,
        size: 30.0,
      ),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.tealAccent[400],
    );
  }
}
