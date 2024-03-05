import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:new_mumlly_app/API%20Service/auth_api_services.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Common/login_custom_input_field.dart';
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
  late ThemeProvider themeProvider;
  final _usernameTextController= TextEditingController();
  final passwordTextController= TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isPasswordHide = true;
  bool isLoadingForLogin = false;
  CommonProvider commonProvider = Provider.of<CommonProvider>(Utility.context);

  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body:SafeArea(
        top: false,
        child: Column(
          children: [
            SizedBox(height: 60,),
            Expanded(
              child: FittedBox(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:45.0,vertical: 45),
                        child: Image.asset(AppImage.getPath("Applogo2"),fit: BoxFit.scaleDown,height: 350,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              width: SizeConfig.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    decoration: BoxDecoration(
                      color: themeProvider.themeColor().cardColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          LoginCustomInputField(
                            controller: _usernameTextController,
                            hintText: "Username", prefixIcon: Icon(Icons.person,size: 25 ),
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
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: isLoadingForLogin?
                      Center(child: SpinKitCircle(color: AppColor.defaultColor),) :
                      DefaultButtonWithGradient(buttonText: "Login",
                        paddingTop: 10,
                        paddingBottom: 10,

                        onTap: () {
                          // Navigator.of(context).pushNamed(SendOtpScreen.routeName);
                        Utility.showLoadingDialog();
                        AuthApiServices.loginAPI(_usernameTextController.text, passwordTextController.text, "5").then((value) async{
                          Utility.pop();
                          if(value.data!=null){
                            commonProvider.setLoginData(value.data!);
                            Navigator.of(context).pushNamed(SendOtpScreen.routeName);
                            print(commonProvider.getLoginData()!.tokenType!);

                          }
                        });

                      },)),
                    ],
                  ),
                  const SizedBox(height: 15,),
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
                  const SizedBox(height: 60,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}