// we use provider to manage the app state

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';

import '../../Utilities/colors.dart';

class ThemeProvider with ChangeNotifier {
  bool isLightTheme;

  ThemeProvider({required this.isLightTheme});

  // the code below is to manage the status bar color when the theme changes
  getCurrentStatusNavigationBarColor() {

    if (isLightTheme) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light,
      ));
    }

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  // use to toggle the theme
  toggleThemeData() async {
    final settings = await Hive.openBox('settings');
    settings.put('isLightTheme', !isLightTheme);
    isLightTheme = !isLightTheme;
    getCurrentStatusNavigationBarColor();
    notifyListeners();
  }

  // Global theme data we are always check if the light theme is enabled #isLightTheme
  ThemeData themeData() {
    return ThemeData(
       fontFamily: "Poppins",
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: isLightTheme ? Colors.grey : Colors.grey,
        primaryColor: isLightTheme ? Color(0xFFE8EAEE) : Colors.black,
        brightness: isLightTheme ? Brightness.light : Brightness.dark,
        backgroundColor: isLightTheme ? Color(0xFFE8EAEE) : Colors.black,
        scaffoldBackgroundColor: isLightTheme ? Color(0xFFE8EAEE) : Colors.black,
        hintColor: AppColor.defaultColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        pageTransitionsTheme: PageTransitionsTheme(builders: {TargetPlatform.android:FadeUpwardsPageTransitionsBuilder(),TargetPlatform.iOS:FadeUpwardsPageTransitionsBuilder()})
    );
  }

  // Theme mode to display unique properties not cover in theme data
  ThemeColor themeColor() {
    return ThemeColor(
      color: isLightTheme ? Colors.white:Colors.black,
      textColor: isLightTheme ? Color(0xFF131314) : Color(0xFFFFFFFF),
      cardColor: isLightTheme ? Colors.white: Colors.black,
      backgroundColor: isLightTheme ? Color(0xFFE8EAEE) : Color(0xFF061506),
      shadowColor: isLightTheme ? Color(0xFFd8d7da): Color(0xFFd8d7da).withOpacity(.7),
      shadow: [
        if (isLightTheme)
          BoxShadow(
              color: Color(0xFF4131EB).withOpacity(.1),
              blurRadius: 7,
              offset: Offset(2, 5)),
        if (!isLightTheme)
          BoxShadow(
              color: Color(0xFFd8d7da).withOpacity(.15),
              blurRadius: 5,
              offset: Offset(2, 5))
      ],
    );
  }
}

// A class to manage specify colors and styles in the app not supported by theme data
class ThemeColor {
  Color color;
  Color backgroundColor;
  Color textColor;
  Color cardColor;
  Color shadowColor;
  List<BoxShadow> shadow;

  ThemeColor({
    required this.color,
    required this.backgroundColor,
    required this.textColor,
    required this.cardColor,
    required this.shadowColor,
    required this.shadow,
  });
}
// Provider finished
