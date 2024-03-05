import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Common/side_bar.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/view_bill.dart';
import 'package:new_mumlly_app/Screens/Student/attendance_screen.dart';
import 'package:new_mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'child_profile.dart';
import 'invoice.dart';

class billing extends StatefulWidget {
  const billing({super.key});


  @override
  State<billing> createState() => _billingState();
}

class _billingState extends State<billing> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          SizedBox(height:80,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: SizeConfig.screenHeight * 0.055,
                width: SizeConfig.screenWidth * 0.11,
                  decoration: BoxDecoration(
                    boxShadow: const [
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
                      MaterialPageRoute(builder: (context) => NavDrawer()),
                    ),
                    child: Icon(Icons.arrow_back)),
              ),
              const Text('Parents Name', style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold,
                  fontFamily: "Lato",
                  color: Colors.black),),
              SizedBox(width: SizeConfig.screenWidth * 0.28,),

              Container(
                margin: EdgeInsets.fromLTRB(22, 0, 20, 0),
                height: SizeConfig.screenHeight * 0.055,
                width: SizeConfig.screenWidth * 0.11,
                decoration: BoxDecoration(
                  boxShadow: const [
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

          Row(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: SizeConfig.screenHeight * 0.14,
                width: SizeConfig.screenWidth * 0.88,

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:  AssetImage(AppImage.getPath("Billing_image")),
                    fit: BoxFit.cover,

                  ),
                    borderRadius: BorderRadius.circular(20)
                ),

                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),

                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Next Payment', style: TextStyle(
                                  fontSize: 13,fontFamily: "Lato",
                                  color: Colors.white),),
                              SizedBox(height: 5,),
                              Text('Ksh: 10000.00', style: TextStyle(
                                  fontSize: 23,fontFamily: "Lato",
                                  color: Colors.white),),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox( width: SizeConfig.screenWidth * 0.07,),

                    Column(
                      children: [
                        Container(
                          height: SizeConfig.screenHeight * 0.035,
                          width: SizeConfig.screenWidth * 0.15,
                          margin: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child:Container(
                            child: const Center(
                              child: Text('April', style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold,
                                  fontFamily: "Lato",
                                  color: Colors.black),),
                            ),
                          ),
                        )
                      ],

                    )
                  ],

                ),


              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
             Container(
               margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
               child: Row(
                 children: [
                   const Text('Invoice', style: TextStyle(
                       fontSize: 16, fontWeight: FontWeight.bold,
                       fontFamily: "Lato",
                       color: Colors.black),),
                   SizedBox(width: SizeConfig.screenWidth* 0.6,),
                   InkWell(
                     onTap: () => Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => view_all_bill()),
                     ),

                     child: Text('view all', style: TextStyle(
                         fontSize: 16, fontWeight: FontWeight.bold,
                         fontFamily: "Lato",
                         color:AppColor.defaultColor1,),),
                   ),

                 ],
               ),
             )
            ],
          ),
          Row(
            children: [
              Container(
                height: SizeConfig.screenHeight* 0.34,
                width: SizeConfig.screenWidth* 0.89,
                margin: EdgeInsets.fromLTRB(20, 5, 20, 0),

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
                          child: const Row(
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
                            margin: EdgeInsets.all(15),
                            height: SizeConfig.screenHeight * 0.045,
                            width: SizeConfig.screenWidth * 0.095,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(42),

                            )
                        ),
                        SizedBox(width: 5,),
                        const Text('Child Name',
                          style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold,
                            fontFamily: "Lato",
                            color: Colors.black),),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.all(15),
                          child: const Column(
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
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Container(
                              height: SizeConfig.screenHeight * 0.055,
                              width: SizeConfig.screenWidth * 0.74,
                              padding: EdgeInsets.only(left: 15,right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [

                                  const Expanded(
                                    child: Text(
                                      'Your total payment',
                                      style: TextStyle(
                                          fontSize: 15,fontFamily: "Lato",
                                          color: Colors.black),
                                    ),
                                  ),
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: DefaultButtonWithGradient(
                        buttonText: "View Invoice",
                        paddingTop: 10,
                        paddingBottom: 10,
                        // horizontalPading: 50,
                        onTap: () {
                          Navigator.of(context).pushNamed(invoice.routeName);
                        },
                      ),
                    ),


                  ],
                ),

              ),
            ],
          ),
          SizedBox(height: 30,),
          Expanded(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Row(
                    children: [
                      const Text('Payment Method', style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                          color: Colors.black),),
                      SizedBox(width: SizeConfig.screenWidth* 0.4),


                      Text('view all', style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                          color:AppColor.defaultColor1,),),
            
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Container(
                  height: SizeConfig.screenHeight * 0.14,
                  width: SizeConfig.screenWidth * 0.25,

                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(15, 3, 5, 0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.defaultButtonColor,
                    ),

                    borderRadius: BorderRadius.circular(25),

                  ),
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 28, // Image radius
                        backgroundImage: AssetImage('assets/images/airtel.jpg'),
                      ),

                      SizedBox(height: 5,),
                      Text('Airtel', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                          color: Colors.black))

                    ],
                  ),
                ),
                Container(
                  height: SizeConfig.screenHeight * 0.14,
                  width: SizeConfig.screenWidth * 0.25,

                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(10, 3, 5, 0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.defaultButtonColor,
                    ),

                    borderRadius: BorderRadius.circular(25),

                  ),
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 28, // Image radius
                        backgroundImage: AssetImage('assets/images/visa-new-20215093.jpg'),
                      ),

                      SizedBox(height: 5,),
                      Text('VISA', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                          color: Colors.black))

                    ],
                  ),
                ),
                Container(
                  height: SizeConfig.screenHeight * 0.14,
                  width: SizeConfig.screenWidth * 0.25,

                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(10, 3, 5, 0),

                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.defaultButtonColor,
                    ),
                    borderRadius: BorderRadius.circular(25),


                  ),
                  child: const Column(
                    children: [
                      // CircleAvatar(// Image radius
                      //   backgroundImage: AssetImage('assets/images/mpesa.png'),
                      // ),
                      Image(image: AssetImage('assets/images/mpesa.png')),

                      SizedBox(height: 5,),
                      Text('Mpesa', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                          color: Colors.black))

                    ],
                  ),
                ),
                Container(
                  height: SizeConfig.screenHeight * 0.14,
                  width: SizeConfig.screenWidth * 0.25,

                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(10, 3, 5, 0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.defaultButtonColor,
                    ),

                    borderRadius: BorderRadius.circular(25),

                  ),
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 28, // Image radius
                        backgroundImage: AssetImage('assets/images/airtel.jpg'),
                      ),

                      SizedBox(height: 5,),
                      Text('Airtel', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                          color: Colors.black))

                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 8)

        ],
      ),
    );
  }
}
