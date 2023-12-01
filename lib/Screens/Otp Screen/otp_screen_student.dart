import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mumlly_app/Common/Buttons/default_button.dart';
import 'package:mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:mumlly_app/Common/Form%20Field/custom_form_field.dart';
import 'package:mumlly_app/Common/bottom_navigation_bar.dart';
import 'package:mumlly_app/Provider/provider.dart';
import 'package:mumlly_app/Provider/theme_provider.dart';
import 'package:mumlly_app/Utilities/colors.dart';
import 'package:mumlly_app/Utilities/images.dart';
import 'package:mumlly_app/Utilities/size_config.dart';
import 'package:provider/provider.dart';


class SendOtpScreen extends StatefulWidget {
  static const String routeName = "SendOtpScreen";

  @override
  _SendOtpScreenState createState() => _SendOtpScreenState();
}

class _SendOtpScreenState extends State<SendOtpScreen> {

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
  List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());
  String ? otpString;

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
            color: AppColor.white,
            // gradient: LinearGradient(
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     colors: [
            //       Color(0xFF9BCD9B).withOpacity(.5),
            //       Color(0xFFDBEDC5).withOpacity(.5),
            //     ]
            // ),
          ),
          child: Column(
            children: [
              SizedBox(height: 60,),
              Expanded(
                child: FittedBox(
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(AppImage.getPath("appLogo"),fit: BoxFit.scaleDown,height: 210,),
                        SizedBox(height: 30,),
                        const Text(
                            "Enter the otp to verify it's you.",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15
                          ),
                        ),
                        SizedBox(height: 25,),
                        Container(
                          padding: EdgeInsets.only(left: 50,right: 50),
                          width: SizeConfig.screenWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                  4,
                                      (index) => SizedBox(
                                    width: 50.0,
                                    child: TextField(
                                      controller: controllers[index],
                                      maxLength: 1,
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        contentPadding: EdgeInsets.all(10.0),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black, width: 2.0),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: AppColor.newButtonColor, width: 2.0),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      onChanged: (value) {
                                        // You can add your logic here when the OTP is entered
                                        print("Entered OTP: $value");
                                        // Move to the next input field when a digit is entered
                                        if (value.isNotEmpty && index < 3) {
                                          FocusScope.of(context).nextFocus();
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              DefaultButton(
                                buttonText: "Verify Otp",
                                color: AppColor.newButtonColor,
                                onTap: (){
                                  otpString = controllersToString(controllers);
                                  print(otpString);
                                  Navigator.of(context).pushNamed(BottomNavigationScreen.routeName);
                                  // if(_formKey.currentState!.validate()) {
                                //   // setState(() {
                                //   //   isCheckingSubDomain = true;
                                //   // });
                                //   Navigator.of(context).pushNamed(BottomNavigationScreen.routeName);
                                // }
                              },),
                              SizedBox(height: 15,),
                              isLoadingForLogin?  Center(child: SpinKitCircle(color: AppColor.defaultColor),) : InkWell(
                                onTap:(){
                                  startTimer();
                                },
                                child: Text(
                                  "Resend",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: (CommonProvider().resentButtonChecker) ? AppColor.black : AppColor.gray
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),

                            ],
                          ),
                        ),
                        const Text(
                          "Didn't receive code?",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              "You ca send a new code in ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15
                              ),
                            ),
                            Text(
                              "$minutes:$seconds ",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
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
  String controllersToString(List<TextEditingController> controllers) {
    // Join the text from all controllers into a single string
    return controllers.map((controller) => controller.text).join('');
  }
}

class otpButtonNotifier extends ChangeNotifier {
  bool get myVariable => CommonProvider().resentButtonChecker;
  void updateButton(bool newValue) {
    CommonProvider().resentButtonChecker = newValue;
    notifyListeners(); // Notify listeners that the value has changed
  }
}
