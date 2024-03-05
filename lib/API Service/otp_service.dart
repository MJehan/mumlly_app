import 'dart:convert';

import 'package:new_mumlly_app/API%20Service/api_constant.dart';
import 'package:new_mumlly_app/Common/data_connection_check.dart';
import 'package:new_mumlly_app/Model/api_model.dart';
import 'package:new_mumlly_app/Model/otp_model.dart';
import 'package:http/http.dart ' as http;
import 'package:new_mumlly_app/Model/veryfy_otp.dart';
import 'package:new_mumlly_app/Provider/provider.dart';
import 'package:new_mumlly_app/Singleton/current%20user%20singleton.dart';


// class CurrentUser{
//   late OtpModel verifyOtp;
//
//
//   void setVerifyOtp(OtpModel verifyOtp){
//     this.verifyOtp = verifyOtp;
//   }
//
//   OtpModel? getVerifyOtp(){
//     return verifyOtp;
//   }
//
//   //singleton
//   static final _currentUser = CurrentUser._internal();
//   factory CurrentUser(){
//     return _currentUser;
//   }
//   CurrentUser._internal();
// }

class OtpService{


  // static Future<APIResponse<OtpModel>> Otp(String Otp) async{
  //   //internet check
  //   if(!await isInternetConnected()){
  //     return APIResponse<OtpModel>(error: true, errorMessage: "Internet is not connected!");
  //   }
  //   Uri url = Uri.parse(baseAPI+'createOtp');
  //   final Map<String, dynamic> jsonData =
  //   {
  //      "otp": Otp
  //   };
  //
  //   return http.post(url,headers:{
  //     "Content-Type": "application/json",
  //     "Authorization": CommonProvider().verifyOtp.data.toString()
  //   })
  //       .then((data){
  //     print(data.body);
  //     print(data.statusCode);
  //     final responseData = utf8.decode(data.bodyBytes);
  //     final jsonData = json.decode(responseData);
  //
  //     if(data.statusCode == 200){
  //       return APIResponse<OtpModel>(data: OtpModel.fromJson(jsonData));
  //     }
  //     else if(data.statusCode == 401){
  //       return APIResponse<OtpModel>(error: true, errorMessage: "SMS does not send. Please contact with provider");
  //     }
  //     return APIResponse<OtpModel>(error: true, errorMessage: jsonData["message"]);
  //
  //   }).catchError((onError){
  //     print(onError);
  //     return APIResponse<OtpModel>(error: true, errorMessage: "An Error Occurred");
  //   });
  // }

  /// Verify OTP
  static Future<APIResponse<verifyOtpModel>> verifyOtp(String otp) async{

    //internet check
    if(!await isInternetConnected()){
      return APIResponse<verifyOtpModel>(error: true, errorMessage: "Internet is not connected!");
    }

    Uri url = Uri.parse("https://devapi.aiidapp.com/api/createOtp");
    return http.post(url,headers:{
      "Content-Type": "application/json",
      "Authorization": CurrentUser().loginResponse!.tokenType!
    })
        .then((data){
      print(data.body);
      print(data.statusCode);
      final responseData = utf8.decode(data.bodyBytes);
      final jsonData = json.decode(responseData);

      if(data.statusCode == 200){
        return APIResponse<verifyOtpModel>(data: verifyOtpModel.fromJson(jsonData));
      }
      else if(data.statusCode == 401){
        return APIResponse<verifyOtpModel>(error: true, errorMessage: "SMS does not send, ");
      }
      return APIResponse<verifyOtpModel>(error: true, errorMessage: jsonData["message"]);

    }).catchError((onError){
      print(onError);
      return APIResponse<verifyOtpModel>(error: true, errorMessage: "An Error Occurred");
    });
  }





}