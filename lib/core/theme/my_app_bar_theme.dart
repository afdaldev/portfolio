import 'package:flutter/material.dart';

class MyAppBarTheme {
  static var light = const AppBarTheme(
    backgroundColor: Color(0xFFFFFFFF),
    titleTextStyle: TextStyle(
      color: Color(0xFFFFFFFF),
    ),
    elevation: 0,
  );

  static var dark = const AppBarTheme(
    backgroundColor: Color(0xFF19191B),
    titleTextStyle: TextStyle(
      color: Color(0xFF19191B),
    ),
    elevation: 0,
  );
}
