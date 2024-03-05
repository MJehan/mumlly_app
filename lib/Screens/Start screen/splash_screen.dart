import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Screens/Start%20screen/get_start_screen.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';


class SplashScreen extends StatefulWidget {
  static const String routeName = "SplashScreen";
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushNamedAndRemoveUntil(GetStartScreen.routeName,(route) => false);
    }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage(
          //     AppImage.getPath("splash3"),
          //   ),
          //   fit: BoxFit.fill,
          //   alignment: Alignment.topCenter,
          //   opacity: (.8),
          // ),
        ),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*0.25),
            Center(child: Image.asset(AppImage.getPath("appLogo"),width: SizeConfig.screenWidth*.6),),
            // const SizedBox(height: 10),
            // Center(child: Image.asset(AppImage.getPath("logo_amar"),width: SizeConfig.screenWidth*.6)),
          ],
        ),
      ),
    );
  }
}