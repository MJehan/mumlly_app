import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/billing.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';

import 'invoice.dart';

class view_all_bill extends StatefulWidget {
  const view_all_bill({super.key});

  @override
  State<view_all_bill> createState() => _view_all_billState();
}

class _view_all_billState extends State<view_all_bill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: SizeConfig.screenHeight * 0.055,
                width: SizeConfig.screenWidth * 0.11,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(42),

                ),
                child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => billing()),
                    ),
                    child: Icon(Icons.arrow_back)),
              ),
              Text('Parents Name', style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold,
                  fontFamily: "Lato",
                  color: Colors.black),),
              SizedBox(width: 110,),
              Container(
                margin: EdgeInsets.fromLTRB(22, 0, 20, 0),
                height: SizeConfig.screenHeight * 0.055,
                width: SizeConfig.screenWidth * 0.11,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(42),

                ),
                child: Icon(Icons.access_alarm_sharp),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                height: SizeConfig.screenHeight* 0.30,
                width: SizeConfig.screenWidth* 0.88,
                margin: EdgeInsets.fromLTRB(20, 5, 0, 0),

                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(135, 10, 25, 0),
                          child: Row(
                            children: [
                              Text('JAN 2023', style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold,
                                  fontFamily: "Lato",
                                  color: Colors.black),),


                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.all(25),
                            height: SizeConfig.screenHeight * 0.045,
                            width: SizeConfig.screenWidth * 0.095,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(42),

                            )
                        ),
                        Text('Child Name', style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold,
                            fontFamily: "Lato",
                            color: Colors.black),),
                        SizedBox(width: 90,),
                        Container(
                          child: Column(
                            children: [
                              Text('Total', style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold,
                                  fontFamily: "Lato",
                                  color: Colors.grey),),
                              SizedBox(height: 3,),
                              Text('1000.00', style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold,
                                  fontFamily: "Lato",
                                  color: Colors.black),),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            height: SizeConfig.screenHeight * 0.055,
                            width: SizeConfig.screenWidth * 0.74,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 20,),

                                Text(
                                  'Your total payment',
                                  style: TextStyle(
                                      fontSize: 15,fontFamily: "Lato",
                                      color: Colors.black),
                                ),
                                SizedBox(width: 70,),

                                Container(
                                  height: SizeConfig.screenHeight * 0.035,
                                  width: SizeConfig.screenWidth * 0.13,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(10, 6, 2, 2),
                                    child: Text('15%', style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.bold,
                                        fontFamily: "Lato",
                                        color: Colors.black),),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],

                    ),
                    SizedBox(height: 10,),
                    DefaultButtonWithGradient(
                      buttonText: "View Invoice",
                      paddingTop: 10,
                      paddingBottom: 10,
                      horizontalPading: 50,
                      onTap: () {
                        Navigator.of(context).pushNamed(invoice.routeName);
                      },
                    ),


                  ],
                ),

              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: SizeConfig.screenHeight* 0.30,
                width: SizeConfig.screenWidth* 0.88,
                margin: EdgeInsets.fromLTRB(20, 5, 0, 0),

                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(135, 10, 25, 0),
                          child: Row(
                            children: [
                              Text('JAN 2023', style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold,
                                  fontFamily: "Lato",
                                  color: Colors.black),),


                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.all(25),
                            height: SizeConfig.screenHeight * 0.045,
                            width: SizeConfig.screenWidth * 0.095,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(42),

                            )
                        ),
                        Text('Child Name', style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold,
                            fontFamily: "Lato",
                            color: Colors.black),),
                        SizedBox(width: 90,),
                        Container(
                          child: Column(
                            children: [
                              Text('Total', style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold,
                                  fontFamily: "Lato",
                                  color: Colors.grey),),
                              SizedBox(height: 3,),
                              Text('1000.00', style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold,
                                  fontFamily: "Lato",
                                  color: Colors.black),),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            height: SizeConfig.screenHeight * 0.055,
                            width: SizeConfig.screenWidth * 0.74,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 20,),

                                Text(
                                  'Your total payment',
                                  style: TextStyle(
                                      fontSize: 15,fontFamily: "Lato",
                                      color: Colors.black),
                                ),
                                SizedBox(width: 70,),

                                Container(
                                  height: SizeConfig.screenHeight * 0.035,
                                  width: SizeConfig.screenWidth * 0.13,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(10, 6, 2, 2),
                                    child: Text('15%', style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.bold,
                                        fontFamily: "Lato",
                                        color: Colors.black),),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],

                    ),
                    SizedBox(height: 10,),
                    DefaultButtonWithGradient(
                      buttonText: "View Invoice",
                      paddingTop: 10,
                      paddingBottom: 10,
                      horizontalPading: 50,
                      onTap: () {
                        Navigator.of(context).pushNamed(invoice.routeName);
                      },
                    ),


                  ],
                ),

              )
            ],
          ),
        ],

      ),
    );
  }
}
