import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:new_mumlly_app/Provider/theme_provider.dart';



import 'package:provider/provider.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({
    Key? key,
    this.buttonText,
    this.iconData,
    this.onTap,
    this.color = const Color(0xFF0082CA),
    this.text_color = const Color(0xFFffffff),
    this.horizontalPading = 10,
    this.paddingTop = 20,
    this.paddingBottom = 20,
    this.width,
    this.linearGradient,
    this.textSize = 18, required Null Function() onPressed,
  }) : super(key: key);

  final String? buttonText;
  final IconData? iconData;
  final Color color;
  final Color text_color;
  final Function()? onTap;
  double horizontalPading;
  double ? width;
  double  paddingTop;
  double  paddingBottom;
  double textSize;
  final LinearGradient? linearGradient;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.only(left: 10, right: horizontalPading,top: paddingTop,bottom: paddingBottom),
        margin: const EdgeInsets.only(left: 0.0, right: 0.0),
        //transform: Matrix4.skewX(-.2),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            //border: Border.all(color: Colors.blueAccent),
            boxShadow: Provider.of<ThemeProvider>(context).themeColor().shadow
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText!,
              style:  TextStyle(
                  color: text_color,
                  fontSize: textSize,
                  fontWeight: FontWeight.bold),
            ),
            if (iconData != null)
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    iconData,
                    color: Colors.white,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}