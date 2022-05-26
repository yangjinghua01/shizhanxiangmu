import 'package:flutter/material.dart';

class HYAppTheme{
  static const double bodyFontSize =14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 22;
  static const double largeFontSize = 24;
  static final Color norTextColors = Colors.red;
  static final Color darkTextColors =Colors.green;




  static final ThemeData norTheme = ThemeData(
    primarySwatch: Colors.pink, splashColor: Colors.transparent,
    //用来设置背景色
    // canvasColor: Color.fromRGBO(255, 254, 222, 1),
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: normalFontSize,color: norTextColors),
      headline1: TextStyle(fontSize: smallFontSize),
      headline2:TextStyle(fontSize: normalFontSize),
      headline3: TextStyle(fontSize: largeFontSize)
    )
  );


  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: normalFontSize,color: darkTextColors)
    )
  );



}