import 'package:flutter/material.dart';
import 'package:miniapp_recharge/theme/colors.dart' as colors;
import 'package:miniapp_recharge/theme/typography.dart' as typography;
import 'colors.dart';

final ThemeData base = ThemeData(fontFamily: 'Moula');

ThemeData globalTheme() {
  return ThemeData(
    fontFamily: 'Moula',
    textTheme: _globalTextTheme(base.textTheme),
    scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(colors.baniTeal)),
    primaryColor: colors.baniTeal,
    backgroundColor: Colors.grey[100],
    dividerColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: colors.baniPurple),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      },
    ),
    colorScheme: ColorScheme(
        primary: colors.baniPurple,
        primaryVariant: colors.baniPurple,
        secondary: colors.baniPurple,
        secondaryVariant: colors.baniPurple,
        surface: Colors.white,
        background: Colors.grey[100]!,
        error: Colors.redAccent[400]!,
        onPrimary: Colors.white,
        onSecondary: colors.baniTeal,
        onSurface: Colors.white,
        onBackground: Colors.black,
        onError: Colors.black,
        brightness: Brightness.light),
  );
}

TextTheme _globalTextTheme(TextTheme base) {
  return base.copyWith(
    caption: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(16),
      fontWeight: FontWeight.w900,
    ), //mesagges for advertising
    subtitle1: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(16),
      fontWeight: FontWeight.normal,
    ), //for title
    subtitle2: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(12),
      fontWeight: FontWeight.normal,
    ),
    overline: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(32),
      fontWeight: FontWeight.w700,
    ),
    button: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(20),
      fontWeight: FontWeight.w600,
    ),
    bodyText1: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(16),
      fontWeight: FontWeight.w700,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(14),
      fontWeight: FontWeight.w400,
    ), //for subtitles in listyle
    headline1: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(26),
      fontWeight: FontWeight.w400,
    ),
    headline2: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(20),
      fontWeight: FontWeight.w400,
    ),
    headline3: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(40),
      fontWeight: FontWeight.w700,
    ),
    headline4: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(32),
      fontWeight: FontWeight.w600,
    ),
    headline5: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(12),
      fontWeight: FontWeight.w700,
    ),
    headline6: TextStyle(
      fontFamily: 'Moula',
      fontSize: typography.fontSize(12),
      fontWeight: FontWeight.w400,
    ),
  );
}
