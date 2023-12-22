import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';



import 'package:provider/provider.dart';

class DefaultBorderButton extends StatelessWidget {
  DefaultBorderButton({
    Key? key,
    this.buttonText,
    this.iconData,
    this.onTap,
    this.color = const Color(0xFF0082CA),
    this.text_color = const Color(0xFFffffff),
    this.horizontalPading = 10,
    this.width,
  }) : super(key: key);

  final String? buttonText;
  final IconData? iconData;
  final Color color;
  final Color text_color;
  final Function()? onTap;
  double horizontalPading;
  double ? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.only(left: 10, right: horizontalPading,top: 20,bottom: 20),
        margin: const EdgeInsets.only(left: 0.0, right: 0.0),
        decoration: BoxDecoration(
            //color: color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColor.defaultColor,
            ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText!,
              style:  TextStyle(
                  color: text_color,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            if (iconData != null)
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    iconData,
                    color: AppColor.defaultColor,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}