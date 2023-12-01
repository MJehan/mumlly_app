import 'package:flutter/material.dart';

class AppColor{
  static Color lightBlue = const Color(0xff120a8f);
  //static Color defaultColor  = const Color(0xff4169e1);
  static Color defaultColor  = const Color(0xFF395676);
  static Color defaultColor1  = const Color(0xFF4472C4);
  static Color defaultColor2  = const Color(0xFFcb8b2c);
  static Color defaultColor3  = const Color(0xFF759a47);
  static Color defaultColor4  = const Color(0xFFb20513);
  static Color defaultColor5 = const Color(0xFFd4c035);
  static Color newButtonColor = const Color(0xff4646b6);

  ///Figma Color
  static Color fTextColor = const Color(0xff5667FD);





  static Color defaultColorLight = const Color(0xffcca633);
  static Color white = Colors.white;
  static Color yellow = const Color(0xffFFBF00);
  static Color pink = const Color(0xffD6728D);
  static Color bangiColor = const Color(0xffDF9263);

  static Color gray = const Color(0xffced5d6);
  static Color deepGray = const Color(0xff686868);
  static Color boxColor = const Color(0xffeeeded);
  static Color dropdownBoxColor = const Color(0xffcccccc);
  static Color black = Colors.black;
  static Color successfulTextColor = const Color(0xff97D700);

  static Color green1 = const Color(0xff008000);


  static Color appBackgroundColor = const Color(0xffEFEFEF);
  static Color hyperLinkTextColor = const Color(0xff0065FC);
  static Color loginTabColor = const Color(0xff00BFFF);
  static Color signInTabColor = const Color(0xff4B0082);
  static Color buttonColor = const Color(0xff00BFFF);
  static Color backButtonColor = const Color(0xffDC143C);
  static Color okButtonColor = const Color(0xff008B8B);
  static Color textFieldHeadingColor = const Color(0xff1CAB89);
  static Color red = const Color(0xffFF0000);
  static Color textColor = const Color(0xff051036);
  static Color hintTextColor = const Color(0xffA3A3A3);
  static Color green = const Color(0xff027300);
  static Color online = const Color(0xff7CCC9A);
  static Color detailsButton = const Color(0xff00008B);
  static Color gradientColor1 = const Color(0xffF5E6BD);
  static Color gradientColor2 = const Color(0xffEDD492);
  static Color tabColor = const Color(0xff4B0082);
  static Color historyTripColor = const Color(0xff8B4513);
  static Color currentTripColor = const Color(0xff00008B);
  static Color alertText = const Color(0xff8B0000);
  static Color sPlatinumColor = const Color(0xffCECECE);
  static Color complainTextColor  = const Color(0xFFE0FAD1);
}




class AppGradient{
  static LinearGradient getColorGradient(String name){
    switch(name){
      case "default" : {
        return LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors:  [
              AppColor.defaultColor3,
              AppColor.defaultColor5,

            ]);
      }
      case "cardColor" : {
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:  [
              AppColor.gradientColor1,
              AppColor.gradientColor2.withOpacity(0.3),
            ]);
      }
      case "myTourCurrentCard" : {
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:  [
              AppColor.currentTripColor.withOpacity(0.2),
              AppColor.white,
            ]);
      }
      case "myTourCurrentCard2" : {
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:  [
              AppColor.backButtonColor.withOpacity(0.2),
              AppColor.white,
            ]);
      }
      case "silverPlatinumColor" : {
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:  [
              AppColor.sPlatinumColor,
              AppColor.white.withOpacity(1.0),
            ]);
      }

      case "activePackageColor" : {
        return LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors:  [
              AppColor.detailsButton,
              AppColor.white.withOpacity(1),
            ]);
      }
      case "activePackageColorL2R" : {
        return LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors:  [
              AppColor.detailsButton,
              AppColor.white.withOpacity(1),
            ]);
      }

      case "tabGradientColor" : {
        return LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors:  [
              AppColor.currentTripColor,
              AppColor.white,
            ]);
      }

      default: {
        //default
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:  [
              AppColor.defaultColor,
              AppColor.defaultColorLight,
            ]);
      }
    }
  }
}

