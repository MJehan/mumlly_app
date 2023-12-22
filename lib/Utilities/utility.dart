import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:new_mumlly_app/main.dart';


import 'colors.dart';


class Utility{
  static get context => MyApp.navKey.currentContext!;
  static pop() => Navigator.of(context).pop();


  static isEmail(value) => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);

  static showSnackBar(String value,{Function()? onRetry,int durationInSeconds= 2}){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(seconds: durationInSeconds),
      margin: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
      padding: onRetry==null? const EdgeInsets.all(12.0) :const EdgeInsets.only(left: 12),
      behavior: SnackBarBehavior.floating,
      content: Text(value,style: const TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500),),
      backgroundColor: AppColor.black,
      action: onRetry==null? null : SnackBarAction(label: 'Retry',textColor: Colors.white60,onPressed: onRetry,),
    ));
  }


  static showLoadingDialog(){
    showModal(
        configuration: const FadeScaleTransitionConfiguration(barrierDismissible: false),
        context: context,
        builder:(context) => SpinKitCircle(size: 85,color: AppColor.tabColor,)
    );
  }
}