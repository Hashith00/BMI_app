import 'package:flutter/material.dart';
import 'inputPage.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myapp(),
    theme: ThemeData(
      primaryColor: Colors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF0a0e22),
        centerTitle: true,
      ),
      scaffoldBackgroundColor: Color(0xFF0a0e22),
      textTheme: const TextTheme(
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white, fontSize: 20),
      )
    ),
  ));
}

