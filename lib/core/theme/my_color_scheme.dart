import 'package:flutter/material.dart';

@immutable
class MyColorScheme extends ThemeExtension<MyColorScheme> {
  final Color? scaffoldBackgroundColor;
  final Color? reverseScaffoldBackground;
  final Color? primaryColor;
  final Color? textColor;
  final Color? reverseTextColor;
  final Color? descriptionTextColor;
  final Color? socialButtonColor;

  MyColorScheme({
    this.scaffoldBackgroundColor,
    this.reverseScaffoldBackground,
    this.primaryColor,
    this.textColor,
    this.reverseTextColor,
    this.descriptionTextColor,
    this.socialButtonColor,
  });

  @override
  ThemeExtension<MyColorScheme> copyWith({
    Color? scaffoldBackgroundColor,
    Color? reverseScaffoldBackground,
    Color? textColor,
    Color? primaryColor,
    Color? reverseTextColor,
    Color? descriptionTextColor,
    Color? socialButtonColor,
  }) =>
      MyColorScheme(
        scaffoldBackgroundColor:
            scaffoldBackgroundColor ?? this.scaffoldBackgroundColor,
        reverseScaffoldBackground:
            reverseScaffoldBackground ?? this.reverseScaffoldBackground,
        primaryColor: primaryColor ?? this.primaryColor,
        textColor: textColor ?? this.textColor,
        reverseTextColor: reverseTextColor ?? this.reverseTextColor,
        descriptionTextColor: descriptionTextColor ?? this.descriptionTextColor,
        socialButtonColor: socialButtonColor ?? this.socialButtonColor,
      );

  @override
  ThemeExtension<MyColorScheme> lerp(
    covariant ThemeExtension<MyColorScheme>? other,
    double t,
  ) =>
      other is! MyColorScheme
          ? this
          : MyColorScheme(
              scaffoldBackgroundColor: Color.lerp(
                scaffoldBackgroundColor,
                other.scaffoldBackgroundColor,
                t,
              ),
              reverseScaffoldBackground: Color.lerp(
                reverseScaffoldBackground,
                other.reverseScaffoldBackground,
                t,
              ),
              primaryColor: Color.lerp(
                primaryColor,
                other.primaryColor,
                t,
              ),
              textColor: Color.lerp(
                textColor,
                other.textColor,
                t,
              ),
              reverseTextColor: Color.lerp(
                reverseTextColor,
                other.reverseTextColor,
                t,
              ),
              descriptionTextColor: Color.lerp(
                descriptionTextColor,
                other.descriptionTextColor,
                t,
              ),
              socialButtonColor: Color.lerp(
                socialButtonColor,
                other.socialButtonColor,
                t,
              ),
            );

  static MyColorScheme lightMode = MyColorScheme(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    reverseScaffoldBackground: const Color(0xFF19191B),
    primaryColor: const Color(0xFFFF774C),
    textColor: const Color(0xFF19191B),
    reverseTextColor: const Color(0xFFFFFFFF),
    descriptionTextColor: const Color(0xFF5A5A5A),
    socialButtonColor: const Color(0xFFFFFFFF),
  );

  static MyColorScheme darkMode = MyColorScheme(
    scaffoldBackgroundColor: const Color(0xFF19191B),
    reverseScaffoldBackground: const Color(0xFFFFFFFF),
    primaryColor: const Color(0xFFD5F60C),
    textColor: const Color(0xFFFFFFFF),
    reverseTextColor: const Color(0xFF19191B),
    descriptionTextColor: const Color(0xFF5A5A5A),
    socialButtonColor: const Color(0xFF1E1E1E).withOpacity(0.12),
  );
}
