import 'dart:convert';
import 'package:new_mumlly_app/API%20Service/api_constant.dart';
import 'package:new_mumlly_app/Common/data_connection_check.dart';
import 'package:new_mumlly_app/Model/api_model.dart';
import 'package:new_mumlly_app/Model/login_model.dart';
import 'package:http/http.dart ' as http;

class AuthApiServices{

  ///Login  API.
  static Future<APIResponse<LoginModel>> loginAPI(String userName, String password,
      String tanentID
      ) async{

    //internet check
    if(!await isInternetConnected()){
      return APIResponse<LoginModel>(error: true, errorMessage: "Internet is not connected!");
    }

    Uri url = Uri.parse('https://devapi.aiidapp.com/api/login');
    final Map<String, dynamic> jsonData =
    {
      "username": userName,
      "password": password,
      "tenant_id": "5",
    };

    return http.post(
      url, headers: headers,
      body:json.encode(jsonData),
    ).then((data){
      print(data);
      print(data.body);
      final responseData = utf8.decode(data.bodyBytes);
      final jsonData = json.decode(responseData);


      if(data.statusCode == 200){
        LoginModel loginData = LoginModel.fromJson(jsonData);
        return APIResponse<LoginModel>(data: loginData);
      }

      return APIResponse<LoginModel>(error: true, errorMessage: "Username and/or password invalid");

    }).catchError((onError){
      print(onError);
      return APIResponse<LoginModel>(error: true, errorMessage: "An Error Occurred");
    });
  }

}