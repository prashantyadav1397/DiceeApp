import 'package:DiceeApp/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // builder: (context, child) {
      //   return MediaQuery(
      //     data: MediaQueryData(textScaleFactor: 1.0),
      //     child: child,
      //   );
      // },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF343247),
        backgroundColor: Color(0xFF343247),
      ),
      home: SafeArea(
        child: SplashScreen(),
      ),
    ),
  );
}
