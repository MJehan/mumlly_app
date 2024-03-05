
import 'package:new_mumlly_app/Model/login_model.dart';
import 'package:new_mumlly_app/Model/veryfy_otp.dart';

class CurrentUser{

  verifyOtpModel? verifyOtp;
  LoginModel? loginResponse;


  void setUser(LoginModel loginResponse){
    this.loginResponse = loginResponse;
  }

  void setVerifyOtp(verifyOtpModel verifyOtp){
    this.verifyOtp = verifyOtp;
  }

  //singleton
  static final _currentUser = CurrentUser._internal();
  factory CurrentUser(){
    return _currentUser;
  }
  CurrentUser._internal();
}