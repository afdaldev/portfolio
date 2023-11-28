import 'package:flutter/material.dart';

class MyButtonStyleTheme {
  static ButtonStyle elevatedButtonStyle({
    EdgeInsets? padding,
    Color? backgroundColor,
    Color? shadowColor,
    Size? fixedSize,
  }) =>
      ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: padding,
        shadowColor: shadowColor,
        shape: const StadiumBorder(),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        fixedSize: fixedSize,
      );

  static ButtonStyle outlinedButtonStyle({
    EdgeInsets? padding,
    Size? fixedSize,
    BorderSide? side,
    OutlinedBorder? shape,
    MaterialTapTargetSize? tapTargetSize,
    VisualDensity? visualDensity,
    Color? backgroundColor,
  }) =>
      OutlinedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.transparent,
        elevation: 0,
        padding: padding ?? const EdgeInsets.all(16.0),
        shadowColor: Colors.transparent,
        shape: shape ?? const StadiumBorder(),
        side: side ??
            const BorderSide(
              color: Color(0xFF5A5A5A),
            ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xFF19191B),
        ),
        fixedSize: fixedSize,
        tapTargetSize: tapTargetSize,
        visualDensity: visualDensity,
      );
}
