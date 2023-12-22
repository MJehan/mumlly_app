import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Common/Form%20Field/custom_form_field.dart';
import 'package:new_mumlly_app/Provider/provider.dart';
import 'package:new_mumlly_app/Provider/theme_provider.dart';
import 'package:new_mumlly_app/Screens/Parent/parent_bottom_navigation_screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';

import 'package:provider/provider.dart';


class ParentSendOtpScreen extends StatefulWidget {
  static const String routeName = "ParentSendOtpScreen";

  @override
  _ParentSendOtpScreenState createState() => _ParentSendOtpScreenState();
}

class _ParentSendOtpScreenState extends State<ParentSendOtpScreen> {

  TextEditingController otpController = TextEditingController();
  Timer ? countdownTimer;
  Duration myDuration = Duration(minutes: 2);
  final _formKey = GlobalKey<FormState>();
  bool isLoadingForLogin = false;
  late ThemeProvider themeProvider;


  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
    otpButtonNotifier().updateButton(true);
  }
  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(minutes: 2));
    otpButtonNotifier().updateButton(true);
  }
  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds == 0) {
        countdownTimer!.cancel();
        stopTimer();
        resetTimer();
      } else {
        otpButtonNotifier().updateButton(false);
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of<ThemeProvider>(context);
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(2));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Scaffold(
      body:SafeArea(
        top: false,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF9BCD9B).withOpacity(.5),
                  Color(0xFFDBEDC5).withOpacity(.5),
                ]
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 60,),
              Expanded(
                child: FittedBox(
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(AppImage.getPath("appLogo"),fit: BoxFit.scaleDown,height: 110,),
                        SizedBox(height: 50,),
                        Text("An Otp Send to your Mobile"),
                        Text(
                          '$minutes:$seconds',
                          //'00:$seconds',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          width: SizeConfig.screenWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                                decoration: BoxDecoration(
                                  color: themeProvider.themeColor().cardColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Form(
                                  key: _formKey,
                                  child: CustomFormField(
                                    themeProvider: themeProvider,
                                    controller: otpController,//commonProvider.emailController,
                                    hintText: "Otp",
                                    validator: (value) {
                                      if(value!.isEmpty){
                                        return "Email can't be empty";
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15,),
                              isLoadingForLogin?  Center(child: SpinKitCircle(color: AppColor.defaultColor),) : InkWell(
                                onTap:(){
                                  startTimer();
                                },
                                child: Text(
                                  "Resend",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: (CommonProvider().resentButtonChecker) ? AppColor.black : AppColor.deepGray
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              SizedBox(height: 15,),
                              DefaultButtonWithGradient(buttonText: "Verify Otp",onTap: (){

                                if(_formKey.currentState!.validate()) {
                                  // setState(() {
                                  //   isCheckingSubDomain = true;
                                  // });
                                  Navigator.of(context).pushNamed(ParentBottomNavigationScreen.routeName);
                                }
                              },),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class otpButtonNotifier extends ChangeNotifier {
  bool get myVariable => CommonProvider().resentButtonChecker;
  void updateButton(bool newValue) {
    CommonProvider().resentButtonChecker = newValue;
    notifyListeners(); // Notify listeners that the value has changed
  }
}
