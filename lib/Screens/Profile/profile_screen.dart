import 'package:flutter/material.dart';
import 'package:mumlly_app/Utilities/colors.dart';
import 'package:mumlly_app/Utilities/images.dart';
import 'package:mumlly_app/Utilities/size_config.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = "ProfileScreen";

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "Jaamacadda Muqdisho",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.black,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              //height: SizeConfig.screenHeight*0.18,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(AppImage.getPath("default_profile")),
                  ),
                  Text(
                    "Md Jehan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColor.deepGray,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
