import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/student_profile_screen.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/tom_screen.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/zainab_screen.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'package:new_mumlly_app/Utilities/utility.dart';

class AllChildrenScreen extends StatefulWidget {
  const AllChildrenScreen({super.key});

  @override
  State<AllChildrenScreen> createState() => _AllChildrenScreenState();
}

class _AllChildrenScreenState extends State<AllChildrenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFFFFEF9),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,),
            InkWell(
                onTap: () {
                  Utility.pop();
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Icon(Icons.arrow_back_ios_new,
                    color: Colors.black,),
                )
            ),
            const SizedBox(height: 20),
            Expanded(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => StudentProfileHomeScreen(name: "Zainab",)),
                            ),

                            child: Container(
                                height: SizeConfig.screenHeight * 0.14,
                                width: SizeConfig.screenWidth * 0.92,
                                margin:EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration:
                                BoxDecoration(
                                  color: Color(0xFFEAEAEA),
                                  borderRadius: BorderRadius.circular(10),),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      height: SizeConfig.screenHeight * 0.14,
                                      width: SizeConfig.screenWidth * 0.22,
                                      child: Image.asset(
                                        AppImage.getPath("main_pic"),
                                        fit: BoxFit.fill,),
                                      decoration:
                                      BoxDecoration(color:Colors.white,
                                        borderRadius: BorderRadius.circular(15),),


                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 5,),
                                          Text('Zainab ', style: TextStyle(
                                              fontSize: 17,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.black),),
                                          SizedBox(height: 12,),

                                          Text('School Name ', style: TextStyle(
                                              fontSize: 15,fontFamily: "Lato",
                                              color: Colors.grey),),

                                          Text('Class/level', style: TextStyle(
                                              fontSize: 15,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.grey
                                          ),),


                                        ],


                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => StudentProfileHomeScreen(name: "Tom",)),
                            ),
                            child: Container(
                                height: SizeConfig.screenHeight * 0.14,
                                width: SizeConfig.screenWidth * 0.92,
                                margin:EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration:
                                BoxDecoration(
                                  color: Color(0xFFEAEAEA),
                                  borderRadius: BorderRadius.circular(10),),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      height: SizeConfig.screenHeight * 0.14,
                                      width: SizeConfig.screenWidth * 0.22,
                                      child: Image.asset(
                                        AppImage.getPath("main_pic"),
                                        fit: BoxFit.fill,),
                                      decoration:
                                      BoxDecoration(color:Colors.white,
                                        borderRadius: BorderRadius.circular(15),),


                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 5,),
                                          Text('Tom', style: TextStyle(
                                              fontSize: 17,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.black),),
                                          SizedBox(height: 12,),

                                          Text('School Name ', style: TextStyle(
                                              fontSize: 15,fontFamily: "Lato",
                                              color: Colors.grey),),

                                          Text('Class/level', style: TextStyle(
                                              fontSize: 15,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.grey
                                          ),),


                                        ],


                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => StudentProfileHomeScreen(name: "Mariam",)),
                            ),
                            child: Container(
                                height: SizeConfig.screenHeight * 0.14,
                                width: SizeConfig.screenWidth * 0.92,
                                margin:EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration:
                                BoxDecoration(
                                  color: Color(0xFFEAEAEA),
                                  borderRadius: BorderRadius.circular(10),),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      height: SizeConfig.screenHeight * 0.14,
                                      width: SizeConfig.screenWidth * 0.22,
                                      child: Image.asset(
                                        AppImage.getPath("main_pic"),
                                        fit: BoxFit.fill,),
                                      decoration:
                                      BoxDecoration(color:Colors.white,
                                        borderRadius: BorderRadius.circular(15),),


                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 5,),
                                          Text('Mariam', style: TextStyle(
                                              fontSize: 17,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.black),),
                                          SizedBox(height: 12,),

                                          Text('School Name ', style: TextStyle(
                                              fontSize: 15,fontFamily: "Lato",
                                              color: Colors.grey),),

                                          Text('Class/level', style: TextStyle(
                                              fontSize: 15,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.grey
                                          ),),


                                        ],


                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),




                        ],
                      ),
                    )))
          ],
        ),
      ),


    );
  }
}
