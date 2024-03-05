import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Common/Form%20Field/custom_form_field.dart';
import 'package:new_mumlly_app/Common/bottom_navigation_bar.dart';
import 'package:new_mumlly_app/Common/login_custom_input_field.dart';
import 'package:new_mumlly_app/Provider/provider.dart';
import 'package:new_mumlly_app/Provider/theme_provider.dart';
import 'package:new_mumlly_app/Screens/Login%20Screens/login_screen.dart';
import 'package:new_mumlly_app/Screens/Otp%20Screen/otp_screen_parent.dart';
import 'package:new_mumlly_app/Screens/Otp%20Screen/otp_screen_student.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'package:new_mumlly_app/Utilities/utility.dart';

import 'package:provider/provider.dart';

class ParentLoginScreen extends StatefulWidget {
  static const String routeName = "ParentLoginScreen";

  const ParentLoginScreen({super.key});

  @override
  State<ParentLoginScreen> createState() => _ParentLoginScreenState();
}

class _ParentLoginScreenState extends State<ParentLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameTextController= TextEditingController();
  final passwordTextController= TextEditingController();
  final CpasswordTextController= TextEditingController();
  final PhoneNumberTextController= TextEditingController();
  final emailTextController= TextEditingController();
  late ThemeProvider themeProvider;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordHide = true;
  bool CPasswordHide = true;
  bool PasswordHide = true;
  bool buttonChecker = true;
  CommonProvider commonProvider = Provider.of<CommonProvider>(Utility.context);
  bool _obscureText = true;

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
                      Image.asset(AppImage.getPath('Applogo2'),width: 110,height: 110,),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Text(
                                "Let's Sign Up",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25
                                ),
                              ),
                            ),
                            const SizedBox(height:5),
                            const Center(
                              child: Text(
                                "Welcome Back,\nYou've been missed!",
                                style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  const SizedBox(height: 20,),

                                  LoginCustomInputField(
                                    controller: _usernameTextController,
                                    hintText: "Type Your Username",
                                    prefixIcon: Icon(Icons.person,size: 25 ),
                                  ),
                                  const SizedBox(height: 8,),
                                  LoginCustomInputField(
                                    controller: emailTextController,
                                    hintText: "Type Your Email",
                                    prefixIcon: Icon(Icons.mail,size: 25 ),
                                  ),
                                  const SizedBox(height: 8,),
                                  LoginCustomInputField(
                                    controller: PhoneNumberTextController,
                                    hintText: "Type Your Phone Number",
                                    prefixIcon: Icon(Icons.phone,size: 25 ),
                                    keyboardType: TextInputType.number,

                                  ),
                                  const SizedBox(height: 8,),
                                  LoginCustomInputField(
                                    controller: passwordTextController,
                                    validator: (value) {
                                      if(value!.isEmpty){
                                        return "Password can't be empty";
                                      }
                                      return null;
                                    },
                                    hintText: "Type New Password",
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
                                    prefixIcon: Icon(Icons.lock),
                                  ),
                                  const SizedBox(height: 8,),
                                  LoginCustomInputField(
                                    controller: CpasswordTextController,
                                    validator: (value) {
                                      if(value!.isEmpty){
                                        return "Password can't be empty";
                                      }
                                      return null;
                                    },
                                    hintText: "Confirm New Password",
                                    obscureText: CPasswordHide,
                                    suffixWidget: InkWell(
                                      onTap: () {
                                        setState(() {
                                          CPasswordHide =
                                          !CPasswordHide;
                                        });
                                      },
                                      child: Icon(
                                        CPasswordHide
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        size: 22.0,
                                      ),
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                  ),


                                ],
                              ),
                            ),
                            const SizedBox(height:5,),
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
                                        fontFamily: "Lato",
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40,),
                            DefaultButtonWithGradient(
                              paddingTop: 13,
                              paddingBottom: 13,
                              buttonText: "Sign Up",
                              color: AppColor.defaultColor,
                              onTap: () {
                                Navigator.of(context).pushNamed(LoginScreen.routeName);
                              },
                            ),
                            const SizedBox(height: 30,),

                            const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'By logging in, you agree to our',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "Lato",
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
                                              fontFamily: "Lato",
                                            ),
                                          ),
                                          const Text(
                                            ' & ',
                                            style: TextStyle(
                                              //color: AppColor.loginTabColor,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                              fontFamily: "Lato",
                                            ),
                                          ),
                                          Text(
                                            'Privacy Policy',
                                            style: TextStyle(
                                              color: AppColor.loginTabColor,
                                              fontFamily: "Lato",
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
  void _togglePasswordView() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
