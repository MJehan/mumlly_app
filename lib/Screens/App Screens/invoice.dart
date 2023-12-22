
import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';

import 'child_managment.dart';

class invoice extends StatefulWidget {
  static const String routeName = "invoice";
  const invoice({super.key});


  @override
  State<invoice> createState() => _invoiceState();
}

class _invoiceState extends State<invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.purple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const SizedBox(height: 70,),
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: const Text('Payment ID: yhsksn43jb', style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.bold,
                fontFamily: "Lato",
                color: Colors.white),),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 10, 20),
            height: SizeConfig.screenHeight * 0.76,
            width: SizeConfig.screenWidth * 0.9,

            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(25),


            ),
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: SizeConfig.screenHeight * 0.09,
                        width: SizeConfig.screenWidth * 0.18,
                          child: Image.asset(
                           AppImage.getPath("main_pic"),
                              fit: BoxFit.fill,),
                        decoration: BoxDecoration(
                          color: AppColor.gray,
                          borderRadius: BorderRadius.circular(30),


                        ),

                      ),
                      SizedBox(height: 10),
                      const Text('Child Name', style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                          color: Colors.black),),
                      SizedBox(height: 20),
                      Text('Date of Payment', style: TextStyle(
                          fontSize: 12,fontFamily: "Lato",
                          color: AppColor.gray,),),
                      SizedBox(height: 12),
                      Text('Amount Due', style: TextStyle(
                          fontSize: 16,fontFamily: "Lato",
                          color: Colors.black),),

                      SizedBox(height: 2),
                      Text('KSH1000', style: TextStyle(
                          fontSize: 26,fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                          color: AppColor.tabColor),),

                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text('Billing Plan', style: TextStyle(
                                      fontSize: 15,fontWeight: FontWeight.bold,
                                      fontFamily: "Lato",
                                      color:AppColor.black),),
                                  SizedBox(height: 10,),
                                  Text('Monthly Plan', style: TextStyle(
                                      fontSize: 15,fontFamily: "Lato",
                                      color: AppColor.black),),
                                ],
                              ),
                            ),

                            SizedBox(height: 10,),

                            Container(
                              height: SizeConfig.screenHeight * 0.13,
                              width: SizeConfig.screenWidth * 0.78,

                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(16),


                              ),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                                child: Text('Thanks for using MumlyApp, We hope you enjoy our service. '
                                    'At MumlyApp we strive to always connect you to your child’s '
                                    'educators. '
                                    , style: TextStyle(
                                    fontSize: 15,fontFamily: "Lato",
                                    color: AppColor.black)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Text('Statas', style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,
                                    fontFamily: "Lato",
                                    color: AppColor.black),),


                                Text('Paid', style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,
                                    fontFamily: "Lato",
                                    color: AppColor.black),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    padding:EdgeInsets.fromLTRB(10, 0, 25, 0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                                      children: [
                                        Text('Transaction ID:', style: TextStyle(
                                            fontSize: 15,fontFamily: "Lato",
                                            color: AppColor.black),),
                                        Spacer(),
                                        Text('Y53gyw', style: TextStyle(
                                            fontSize: 13,fontWeight: FontWeight.bold,
                                            color:AppColor.black),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    padding:EdgeInsets.fromLTRB(10, 0, 25, 0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Invoice Date:', style: TextStyle(
                                            fontSize: 15,fontFamily: "Lato",
                                            color: AppColor.black),),
                                        Spacer(),
                                        Text('March 19, 2021', style: TextStyle(
                                            fontSize: 13,fontWeight: FontWeight.bold,
                                            fontFamily: "Lato",
                                            color: AppColor.black),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    padding:EdgeInsets.fromLTRB(10, 0, 25, 0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Date of payment:', style: TextStyle(
                                            fontSize: 15,fontFamily: "Lato",
                                            color: AppColor.black),),
                                        Spacer(),
                                        Text('March 19, 2021', style: TextStyle(
                                            fontSize: 13,fontWeight: FontWeight.bold,
                                            fontFamily: "Lato",
                                            color: AppColor.black),),
                                      ],
                                    ),
                                  ),






                                ],
                              ),
                            )
                          ],
                        ),
                      )

                    ],
                  ),

                ),

              ],
            ),

            ),
        ],
      ),




    );
  }
}
