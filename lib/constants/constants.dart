import 'package:flutter/material.dart';

class Constants {
  static const String version = '1.0.0';

  static const double _spaceBase = 16.0;
  static const double xxs = _spaceBase * 0.125;
  static const double xs = _spaceBase * 0.25;
  static const double sm = _spaceBase * 0.50;
  static const double md = _spaceBase * 1.00;
  static const double lg = _spaceBase * 1.50;
  static const double xl = _spaceBase * 3.00;

  static const TextStyle headline1 = TextStyle(
    fontSize: 96.0,
  );
  static const TextStyle headline2 = TextStyle(
    fontSize: 60.0,
  );
  static const TextStyle headline3 = TextStyle(
    fontSize: 48.0,
  );
  static const TextStyle headline4 = TextStyle(
    fontSize: 34.0,
  );
  static const TextStyle headline5 = TextStyle(
    fontSize: 24.0,
  );
  static const TextStyle headline6 = TextStyle(
    fontSize: 20.0,
  );
  static const TextStyle subtitle1 = TextStyle(
    fontSize: 16.0,
  );
  static const TextStyle subtitle2 = TextStyle(
    fontSize: 14.0,
  );
  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16.0,
  );
  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14.0,
  );
  static const TextStyle button = TextStyle(
    fontSize: 14.0,
  );
  static const TextStyle caption = TextStyle(
    fontSize: 12.0,
  );
  static const TextStyle overline = TextStyle(
    fontSize: 10.0,
  );

  static const double mfin = double.maxFinite;
  static const double inf = double.infinity;

  static const String exportDateFormat = 'yyyy-MM-dd HH:mm:ss';
  static const String orderRequestDateFormat = 'yyyy-MM-dd';
  static const String displayDateFormat = 'HH:mm:ss yyyy.MM.dd';
}
