import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Common/side_bar.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/view_bill.dart';
import 'package:new_mumlly_app/Screens/Student/attendance_screen.dart';
import 'package:new_mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'child_managment.dart';
import 'invoice.dart';

class billing extends StatefulWidget {
  const billing({super.key});


  @override
  State<billing> createState() => _billingState();
}

class _billingState extends State<billing> {
  int _currentIndex = 0;
  final List<Widget>screens = [
    const StudentHomeScreen(),
    const AttendanceScreen(),
    const HomeScrean(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height:50,),
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
                      MaterialPageRoute(builder: (context) => NavDrawer()),
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

          Row(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: SizeConfig.screenHeight * 0.14,
                width: SizeConfig.screenWidth * 0.88,

                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Column(
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

                    Column(
                      children: [
                        Container(
                          height: SizeConfig.screenHeight * 0.035,
                          width: SizeConfig.screenWidth * 0.15,
                          margin: EdgeInsets.fromLTRB(50, 30, 0, 0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child:Container(
                            margin: EdgeInsets.fromLTRB(13, 4, 2, 5),
                            child: Text('April', style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold,
                                fontFamily: "Lato",
                                color: Colors.black),),
                          ),
                        )
                      ],

                    )
                  ],

                ),


              )
            ],
          ),
          Row(
            children: [
             Container(
               margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
               child: Row(
                 children: [
                   Text('Invoice', style: TextStyle(
                       fontSize: 16, fontWeight: FontWeight.bold,
                       fontFamily: "Lato",
                       color: Colors.black),),
                   SizedBox(width: 225,),
                   InkWell(
                     onTap: () => Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => view_all_bill()),
                     ),

                     child: Text('view all', style: TextStyle(
                         fontSize: 16, fontWeight: FontWeight.bold,
                         fontFamily: "Lato",
                         color: Colors.purple.shade900),),
                   ),

                 ],
               ),
             )
            ],
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
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Row(
                  children: [
                    Text('Payment Method', style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold,
                        fontFamily: "Lato",
                        color: Colors.black),),
                    SizedBox(width: 160,),
                    Text('view all', style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold,
                        fontFamily: "Lato",
                        color: Colors.purple.shade900),),

                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
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
                      color: Colors.purple.shade200,
                    ),

                    borderRadius: BorderRadius.circular(25),

                  ),
                  child: Column(
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
                      color: Colors.purple.shade200,
                    ),

                    borderRadius: BorderRadius.circular(25),

                  ),
                  child: Column(
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
                      color: Colors.purple.shade200,
                    ),

                    borderRadius: BorderRadius.circular(25),

                  ),
                  child: Column(
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

                  padding: EdgeInsets.all(1),
                  margin: EdgeInsets.fromLTRB(20, 3, 5, 0),

                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple.shade200,
                    ),
                    borderRadius: BorderRadius.circular(25),


                  ),
                  child: Column(
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






              ],

            ),
          ),
          SizedBox(height: 10,)

        ],
      ),

      bottomNavigationBar: Container(
        height: 60.0, // Set the desired height
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudentHomeScreen()),
              );
            }
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AttendanceScreen()),
              );
            }
            if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScrean()),
              );
            }
          },
          items: [
            BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: '',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),


    );
  }
}
