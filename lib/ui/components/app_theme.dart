import 'package:flutter/material.dart';

ThemeData get theme {
  final primaryColor = Color.fromRGBO(136, 14, 79, 1);
  final primaryColorDark = Color.fromRGBO(96, 0, 39, 1);
  final primaryColorLight = Color.fromRGBO(188, 71, 123, 1);
  final textTheme = TextTheme(
    headline1: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: primaryColorDark,
    ),
  );
  final inputDecorationTheme = InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: primaryColorLight),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: primaryColor),
    ),
    alignLabelWithHint: true,
  );
  final buttonTheme = ButtonThemeData(
    colorScheme: ColorScheme.light(primary: primaryColor),
    buttonColor: primaryColor,
    splashColor: primaryColorLight,
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );

  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: primaryColor,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    ),
  );

  final textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (states) {
          return TextStyle(
            fontWeight: FontWeight.w600,
          );
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return primaryColor; // Use the component's default.
        },
      ),
    ),
  );

  return ThemeData(
    primaryColor: primaryColor,
    primaryColorDark: primaryColorDark,
    primaryColorLight: primaryColorLight,
    accentColor: primaryColor,
    backgroundColor: Colors.white,
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
    buttonTheme: buttonTheme,
    textButtonTheme: textButtonTheme,
    elevatedButtonTheme: elevatedButtonTheme,
  );
}
