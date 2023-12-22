import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_button.dart';
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

class LoginScreen extends StatefulWidget {
  static const String routeName = "LoginScreen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late ThemeProvider themeProvider;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordHide = true;
  bool buttonChecker = true;
  late FlCountryCodePicker countryPicker;
  CountryCode? countryCode;
  String ? phoneCode;
  CommonProvider commonProvider = Provider.of<CommonProvider>(Utility.context);
  @override
  void initState() {
    super.initState();

    final countryfilter = ['BD','SO','ET'];
    countryPicker = FlCountryCodePicker(
        filteredCountries: countryfilter
    );
  }
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
                      const SizedBox(height: 20,),
                      const Text(
                        "Log In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          fontFamily: "Lato",
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Image.asset(AppImage.getPath('appLogo'),width: 200,height: 200,),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 30,),
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
                            const SizedBox(height: 5.0),
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
                            const SizedBox(height: 10,),

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
                            const SizedBox(height: 5,),

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


                                  const SizedBox(height: 20.0),
                                  DefaultButtonWithGradient(
                                    paddingBottom: 15,
                                    paddingTop: 15,
                                    buttonText: "Log In",

                                    onTap: () {
                                      Navigator.of(context).pushNamed(SendOtpScreen.routeName);
                                    },
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 10.0),







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
                                        const Text(
                                          ' Create an account? ',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Lato",
                                          ),
                                        ),
                                        Text(
                                          'Sign Up',
                                          style: TextStyle(
                                            color: AppColor.loginTabColor,
                                            fontSize: 16,
                                            fontFamily: "Lato",
                                          ),
                                        ),
                                      ],
                                    ),
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


