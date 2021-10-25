import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.amber,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Colors.indigo,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.grey[200],
      centerTitle: true,
      titleTextStyle:
          const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(fontSize: 14),
      bodyText2: TextStyle(
        fontSize: 18,
      ),
      headline6: TextStyle(
        fontSize: 28,
      ),
    ),
  );
}
