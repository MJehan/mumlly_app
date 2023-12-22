import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Common/Form%20Field/custom_form_field.dart';
import 'package:new_mumlly_app/Common/bottom_navigation_bar.dart';
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
  late ThemeProvider themeProvider;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordHide = true;
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
                      Image.asset(AppImage.getPath('parent_login'),width: 110,height: 110,),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Text(
                                "Let's Sign in",
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
                                  const SizedBox(height: 10,),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 25.0, right: 20),
                                    child: Text(
                                      "User Name",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: "Lato",
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                                    child: Column(
                                      children: [
                                        TextField(

                                          decoration: InputDecoration(
                                            fillColor: Colors.grey.shade200,
                                            filled: true,
                                            labelText: ' Type your User Name',
                                            hintStyle: TextStyle(fontSize: 10, fontFamily: 'Lato'),

                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                              borderSide: BorderSide.none, // Remove the border
                                            ),
                                            contentPadding: EdgeInsets.only(left: 10),

                                            prefixIcon: Icon(
                                              Icons.person,
                                              size: 25,
                                              color: AppColor.black.withOpacity(0.6),
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 5,),

                                  const Padding(
                                    padding: EdgeInsets.only(left: 25.0, right: 20),
                                    child: Text(
                                      "Email",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: "Lato",
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                                    child: Column(
                                      children: [
                                        TextFormField(

                                          decoration: InputDecoration(
                                            fillColor: Colors.grey.shade200,
                                            filled: true,

                                            labelText: ' Type your Email',
                                            hintStyle: TextStyle(fontSize: 10, fontFamily: 'Lato',
                                                color: Colors.grey),

                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                              borderSide: BorderSide.none, // Remove the border
                                            ),
                                            contentPadding: EdgeInsets.only(left: 10),


                                            prefixIcon: Icon(
                                              Icons.mail,
                                              size: 25,
                                              color: AppColor.black.withOpacity(0.6),
                                            ),
                                          ),

                                          keyboardType: TextInputType.emailAddress,

                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 5.0),

                                  const Padding(
                                    padding: EdgeInsets.only(left: 25.0, right: 20),
                                    child: Text(
                                      "Phone Number",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: "Lato",
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                                    child: Column(
                                      children: [
                                        TextField(

                                          decoration: InputDecoration(
                                            fillColor: Colors.grey.shade200,
                                            filled: true,
                                            labelText: ' Type your Phone Number',
                                            hintStyle: TextStyle(fontSize: 10, fontFamily: 'Lato'),

                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                              borderSide: BorderSide.none, // Remove the border
                                            ),
                                            contentPadding: EdgeInsets.only(left: 10),

                                            prefixIcon: Icon(
                                              Icons.phone,
                                              size: 25,
                                              color: AppColor.black.withOpacity(0.6),
                                            ),
                                          ),
                                          keyboardType: TextInputType.phone,

                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 5.0),

                                  const Padding(
                                    padding: EdgeInsets.only(left: 25.0, right: 20),
                                    child: Text(
                                      "Password",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: "Lato",


                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                                    child: Column(
                                      children: [
                                        TextField(
                                          obscureText: _obscureText,
                                          decoration: InputDecoration(
                                            fillColor: Colors.grey.shade200,
                                            filled: true,
                                            labelText: ' Type Your Password',
                                            hintStyle: TextStyle(fontSize: 10),

                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                              borderSide: BorderSide.none, // Remove the border
                                            ),
                                            contentPadding: EdgeInsets.only(left: 10),
                                            suffixIcon: GestureDetector(
                                              onTap:_togglePasswordView ,
                                              child: Icon(
                                                _obscureText ? Icons.visibility : Icons.visibility_off, // Add this line
                                              ),

                                            ),
                                            prefixIcon: Icon(
                                              Icons.lock,
                                              size: 25,
                                              color: AppColor.black.withOpacity(0.6),
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 5.0),

                                  const Padding(
                                    padding: EdgeInsets.only(left: 25.0, right: 20),
                                    child: Text(
                                      "Confirm Password",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: "Lato",


                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                                    child: Column(
                                      children: [
                                        TextField(
                                          obscureText: _obscureText,
                                          decoration: InputDecoration(
                                            fillColor: Colors.grey.shade200,
                                            filled: true,
                                            labelText: ' Type Your Password',
                                            hintStyle: TextStyle(fontSize: 10),

                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                              borderSide: BorderSide.none, // Remove the border
                                            ),
                                            contentPadding: EdgeInsets.only(left: 10),
                                            suffixIcon: GestureDetector(
                                              onTap:_togglePasswordView ,
                                              child: Icon(
                                                _obscureText ? Icons.visibility : Icons.visibility_off, // Add this line
                                              ),

                                            ),
                                            prefixIcon: Icon(
                                              Icons.lock,
                                              size: 25,
                                              color: AppColor.black.withOpacity(0.6),
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 5.0),

                                  const SizedBox(height: 10.0),
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
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            DefaultButtonWithGradient(
                              paddingTop: 15,
                              paddingBottom: 15,
                              buttonText: "Sign in",
                              color: AppColor.defaultColor,
                              onTap: () {
                                Navigator.of(context).pushNamed(LoginScreen.routeName);
                              },
                            ),
                            const SizedBox(height: 10,),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: GestureDetector(
                                    onTap: ()   async {
                                      Navigator.of(context).pushNamed(BottomNavigationScreen.routeName);
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
                                          ' Student?',
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
  void _togglePasswordView() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
