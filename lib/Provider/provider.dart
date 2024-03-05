export 'theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Model/login_model.dart';
import 'package:new_mumlly_app/Model/otp_model.dart';

class CommonProvider extends ChangeNotifier{

  String ? token;
  bool  resentButtonChecker = false;
  late OtpModel verifyOtp;

  ///**********--------Api data------**********
  LoginModel ? loginModel;

  ///Login Model
  void setLoginData(LoginModel _loginModel){
    loginModel = _loginModel;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      notifyListeners();
    });
  }
  LoginModel? getLoginData(){
    return loginModel;
  }

  // ///OTP Model
  // OtpModel? VerifyOtp;
  // void setVerifyOtp(OtpModel verifyOtp){
  //   VerifyOtp = verifyOtp;
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     notifyListeners();
  //   });
  // }

  // OtpModel? getVerifyOtp(){
  //   return verifyOtp;
  // }


  //singleton
  static final _currentUser = CommonProvider._internal();
  factory CommonProvider(){
    return _currentUser;
  }
  CommonProvider._internal();
  }



