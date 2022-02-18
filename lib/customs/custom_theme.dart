import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomTheme with ChangeNotifier{
  static bool isLightTheme = true;
  ThemeMode get currentTheme => isLightTheme ? ThemeMode.light : ThemeMode.dark;

  void toggleTheme(){
    isLightTheme = !isLightTheme;
    notifyListeners();
  }

  static const Color background = Colors.white;
  static const Color primaryText = Color(0xFFF5F5FA);

  static ThemeData get LightTheme{
    return ThemeData(
      primaryColor: primaryText,
      backgroundColor: background,
      brightness: Brightness.light,
      primaryColorLight: Colors.black,
      primaryColorDark: Color(0XFF767676),
    );
  }


  static const Color darkBackground = Colors.black;
  static const Color darkPrimaryText = Color(0xFFF5F5FA);

  static ThemeData get darkTheme{
    return ThemeData(
      primaryColor: darkPrimaryText,
      backgroundColor: darkBackground,
      brightness: Brightness.dark,
      primaryColorLight: Colors.white,
      primaryColorDark: Color(0XFF767676),
    );
  }

}