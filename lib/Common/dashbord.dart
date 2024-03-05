
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:new_mumlly_app/Provider/theme_provider.dart';
import 'package:new_mumlly_app/Utilities/images.dart';


class DashboardExploreItem extends StatelessWidget {
  const DashboardExploreItem({
    Key ? key,
    required this.themeProvider,
    required this.iconName,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  final ThemeProvider themeProvider;
  final String iconName;
  final String title;
  final String subtitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap(),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: themeProvider.themeColor().cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              height: 63,
              width: 63,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  shape: BoxShape.circle
              ),
              child: Image.asset(AppImage.getPath(iconName)),
            ),
            SizedBox(width: 15,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LocaleText(title, style: TextStyle(color: Color(0xFF000000),fontSize: 15,fontWeight: FontWeight.w600),),
                  LocaleText(subtitle, style: TextStyle(color: Color(0xFF474747),fontSize: 10,fontWeight: FontWeight.w400),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}