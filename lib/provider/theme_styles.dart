import 'package:flutter/material.dart';
import 'package:meu_portfolio/constants.dart';

class ThemeStyles {
  static ThemeData themeData(bool lightTheme, BuildContext buildContext) {
    return lightTheme
        ?
        // Light Theme
        ThemeData(
            primarySwatch: Colors.red,
            primaryColorLight: kPrimaryColor,
            brightness: Brightness.light,
            fontFamily: "Montserrat",
            primaryColor: kPrimaryColor, 
            highlightColor: Colors.black,
            canvasColor: Colors.white,
          )
        // Dark Theme
        : ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.red,
            primaryColorDark: kPrimaryColor,
            primaryColor: kPrimaryColor, 
            fontFamily: "Montserrat",
            highlightColor: kPrimaryColor,
            canvasColor: Colors.white,
          );
  }
}
