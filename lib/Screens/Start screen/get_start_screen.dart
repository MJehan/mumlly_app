import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Screens/Login%20Screens/login_screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';


class GetStartScreen extends StatefulWidget {
  static const String routeName = "GetStartScreen";

  const GetStartScreen({super.key});

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImage.getPath("splash_image"),
            ),
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*0.65),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40),
                child: Center(
                  child: DefaultButtonWithGradient(
                    paddingBottom: 15,
                    paddingTop: 15,
                    buttonText: "Get Start",
                    onTap: (){
                      Navigator.of(context).pushNamed(LoginScreen.routeName);
                    },
                    color: AppColor.defaultColor1,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
