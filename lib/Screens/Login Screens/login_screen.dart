import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:mumlly_app/Common/Buttons/default_button.dart';
import 'package:mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:mumlly_app/Common/Form%20Field/custom_form_field.dart';
import 'package:mumlly_app/Common/bottom_navigation_bar.dart';
import 'package:mumlly_app/Provider/provider.dart';
import 'package:mumlly_app/Provider/theme_provider.dart';
import 'package:mumlly_app/Screens/Login%20Screens/select_login_screen.dart';
import 'package:mumlly_app/Screens/Login%20Screens/parent_login.dart';
import 'package:mumlly_app/Screens/Otp%20Screen/otp_screen_student.dart';
import 'package:mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:mumlly_app/Utilities/colors.dart';
import 'package:mumlly_app/Utilities/images.dart';
import 'package:mumlly_app/Utilities/size_config.dart';
import 'package:mumlly_app/Utilities/utility.dart';
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
                            fontSize: 40
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
                                "Phone Number",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Jost"
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () async {
                                          final code = await countryPicker.showPicker(
                                              context: context,
                                              initialSelectedLocale: "BD");
                                          setState(() {
                                            countryCode = code;
                                            phoneCode = countryCode!.dialCode;
                                          });
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(top: SizeConfig.screenHeight*0.004),
                                          padding: EdgeInsets.only(
                                              left: SizeConfig.screenWidth*0.02, right: SizeConfig.screenWidth*0.015,
                                              top: SizeConfig.screenHeight*0.017, bottom: SizeConfig.screenHeight*0.017
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            color: AppColor.gray.withOpacity(0.4),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: countryCode != null
                                                    ? countryCode!.flagImage
                                                    : null,
                                              ),
                                              SizedBox(width: SizeConfig.screenWidth*0.01),
                                              Container(
                                                child: Text(
                                                  countryCode?.dialCode ?? "Select Country" ,
                                                  style: const TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: SizeConfig.screenWidth*0.01),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: CustomFormField(
                                            themeProvider: themeProvider,
                                            controller: emailController,//commonProvider.emailController,
                                            hintText: "Phone Number",
                                            validator: (value) {
                                              if(value!.isEmpty){
                                                return "Phone Numeber can't be empty";
                                              }
                                              return null;
                                            },
                                            keyboardType: TextInputType.text,
                                            suffixWidget: Icon(
                                              Icons.phone,
                                              size: 20,
                                              color: AppColor.black.withOpacity(0.6),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20.0),
                                  DefaultButton(
                                    buttonText: "Log In",
                                    color: AppColor.newButtonColor,
                                    onTap: () {
                                      Navigator.of(context).pushNamed(SendOtpScreen.routeName);
                                    },
                                  ),
                                ],
                              ),
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
                                          ),
                                        ),
                                        Text(
                                          'Sign Up',
                                          style: TextStyle(
                                            color: AppColor.loginTabColor,
                                            fontSize: 16,
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
}
