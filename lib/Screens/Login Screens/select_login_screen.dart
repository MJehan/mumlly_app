import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_border_button.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Provider/theme_provider.dart';
import 'package:new_mumlly_app/Screens/Login%20Screens/parent_login.dart';
import 'package:new_mumlly_app/Screens/Login%20Screens/student_login_screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';

import 'package:provider/provider.dart';

class SelectLoginScreen extends StatefulWidget {
  static const String routeName = "SelectLoginScreen";

  const SelectLoginScreen({super.key});

  @override
  State<SelectLoginScreen> createState() => _SelectLoginScreenState();
}

class _SelectLoginScreenState extends State<SelectLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late ThemeProvider themeProvider;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordHide = true;
  bool buttonChecker = true;
  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: AppColor.defaultColor3,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(AppImage.getPath('login_back')),
            const SizedBox(height: 100,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)
                    ),
                    color: AppColor.white
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImage.getPath('appLogo'),height: 40,width: 40,),
                        const SizedBox(width: 20,),
                        const Text(
                            "Mumlly",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      "Mumlly Servers You Virtual \nEducation At Your Home",
                      style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Column(
                          children: [
                            const SizedBox(height: 5.0),
                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth,right: SizeConfig.screenWidth),
                            ),
                            DefaultButtonWithGradient(
                              buttonText: "Login as Student",
                              color: AppColor.defaultColor,
                              onTap: () {
                                Navigator.of(context).pushNamed(StudentLoginScreen.routeName);
                              },
                            ),
                            const SizedBox(height: 10.0),
                            DefaultBorderButton(
                              buttonText: "Login as Parent",
                              color: AppColor.defaultColor,
                              text_color: AppColor.defaultColor,
                              onTap: () {
                                Navigator.of(context).pushNamed(ParentLoginScreen.routeName);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
