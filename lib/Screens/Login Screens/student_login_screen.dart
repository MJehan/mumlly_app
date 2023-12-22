import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Common/Form%20Field/custom_form_field.dart';
import 'package:new_mumlly_app/Provider/provider.dart';
import 'package:new_mumlly_app/Provider/theme_provider.dart';
import 'package:new_mumlly_app/Screens/Login%20Screens/parent_login.dart';
import 'package:new_mumlly_app/Screens/Otp%20Screen/otp_screen_student.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'package:new_mumlly_app/Utilities/utility.dart';

import 'package:provider/provider.dart';

class StudentLoginScreen extends StatefulWidget {
  static const String routeName = "StudentLoginScreen";
  const StudentLoginScreen({super.key});

  @override
  State<StudentLoginScreen> createState() => _StudentLoginScreenState();
}

class _StudentLoginScreenState extends State<StudentLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late ThemeProvider themeProvider;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordHide = true;
  bool buttonChecker = true;
  CommonProvider commonProvider = Provider.of<CommonProvider>(Utility.context);

  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child:  Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Image.asset(AppImage.getPath('student_login_image'),width: 200,height: 200,),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 20,),
                            const Text(
                              "Let's Sign in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50
                              ),
                            ),
                            const SizedBox(height: 10,),
                            const Text(
                              "Welcome Back,\nYou've been missed!",
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                  fontSize: 25
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20),
                              child: Column(
                                children: [
                                  const SizedBox(height: 20.0),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 60,
                                        child: Text(
                                          "Email",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Jost"
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: SizeConfig.screenWidth*0.1),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: CustomFormField(
                                            themeProvider: themeProvider,
                                            controller: emailController,//commonProvider.emailController,
                                            hintText: "Email",
                                            validator: (value) {
                                              if(value!.isEmpty){
                                                return "Email can't be empty";
                                              }
                                              return null;
                                            },
                                            keyboardType: TextInputType.text,
                                            suffixWidget: Icon(
                                              Icons.email_outlined,
                                              size: 20,
                                              color: AppColor.black.withOpacity(0.6),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5.0),
                                  Row(
                                    children: [
                                      Container(
                                        width: 85,
                                        child: const Text(
                                          "password",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Jost"
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: SizeConfig.screenWidth*0.04),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: CustomFormField(
                                            themeProvider: themeProvider,
                                            controller: passwordController,
                                            validator: (value) {
                                              if(value!.isEmpty){
                                                return "Email can't be empty";
                                              }
                                              return null;
                                            },
                                            hintText: "Minimum 8 character",
                                            obscureText: isPasswordHide,
                                            suffixWidget: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  isPasswordHide =
                                                  !isPasswordHide;
                                                });
                                              },
                                              child: Icon(
                                                isPasswordHide
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                size: 22.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10.0),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: GestureDetector(
                                    onTap: ()   async {},
                                    child: Text(
                                      'Reset password?',
                                      style: TextStyle(
                                        color: AppColor.loginTabColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            DefaultButtonWithGradient(
                              paddingBottom: 10,
                              paddingTop: 10,
                              buttonText: "Sign in",
                              linearGradient: AppGradient.getColorGradient("default"),
                              onTap: () {
                                Navigator.of(context).pushNamed(SendOtpScreen.routeName);
                              },
                            ),
                            const SizedBox(height: 10,),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: GestureDetector(
                                    onTap: ()   async {
                                      Navigator.of(context).pushNamed(ParentLoginScreen.routeName);
                                    },
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Login as',
                                          style: TextStyle(
                                            color: AppColor.loginTabColor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          ),
                                        ),
                                        const Text(
                                          ' Parent?',
                                          style: TextStyle(
                                            //color: AppColor.loginTabColor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'By logging in, you agree to our',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Terms & Condition',
                                            style: TextStyle(
                                              color: AppColor.loginTabColor,
                                              fontSize: 15,
                                            ),
                                          ),
                                          const Text(
                                            ' & ',
                                            style: TextStyle(
                                              //color: AppColor.loginTabColor,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            'Privacy Policy',
                                            style: TextStyle(
                                              color: AppColor.loginTabColor,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
