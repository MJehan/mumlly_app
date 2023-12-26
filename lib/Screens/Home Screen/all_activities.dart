import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';

class AllActivitesScreen extends StatefulWidget {
  static const String routeName = "AllActivitesScreen";

  const AllActivitesScreen({super.key});

  @override
  State<AllActivitesScreen> createState() => _AllActivitesScreenState();
}

class _AllActivitesScreenState extends State<AllActivitesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.deepPurple,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.all(25),
                child: Text('We design after School activities ...All of the events are below', style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.bold,
                    fontFamily: "Lato",
                    color: Colors.white),),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            SizedBox(height: 20,),

                            Text('Schedule Event', style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold,
                                fontFamily: "Lato",
                                color: Colors.black),),

                            Row(
                              children: [
                                Container(
                                  height: SizeConfig.screenHeight * 0.13,
                                  width: SizeConfig.screenWidth * 0.2,
                                  decoration:
                                  BoxDecoration(color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(10),),
                                  child: Image.asset(
                                    AppImage.getPath("coding_pic"),
                                    fit: BoxFit.fill,),


                                ),
                                InkWell(
                                  // onTap: () => Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => event_details()),
                                  // ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 12),
                                    child: Column(
                                      children: const [
                                        SizedBox(height: 5,),
                                        Text(
                                          'Coding bootcamp for kids ',
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Poppins",
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 12,),
                                        Text(
                                          'By Organiser ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Poppins",
                                              color: Colors.grey
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          '24 March 21 /11.00 PM',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins",
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: SizeConfig.screenHeight * 0.14,
                                width: SizeConfig.screenWidth * 0.92,
                                margin:EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),

                                decoration:
                                BoxDecoration(color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10),),
                                child: Row(
                                  children: [
                                    Container(
                                      height: SizeConfig.screenHeight * 0.13,
                                      width: SizeConfig.screenWidth * 0.2,
                                      child: Image.asset(
                                        AppImage.getPath("coding_pic"),
                                        fit: BoxFit.fill,),
                                      decoration:
                                      BoxDecoration(color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),),


                                    ),
                                    InkWell(
                                      // onTap: () => Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => event_details()),
                                      // ),
                                      child: Container(
                                        margin: EdgeInsets.only(left: 12),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 5,),
                                            Text('Coding bootcamp for kids ', style: TextStyle(
                                                fontSize: 17,fontWeight: FontWeight.bold,
                                                fontFamily: "Lato",
                                                color: Colors.black),),
                                            SizedBox(height: 12,),

                                            Text('By Organiser ', style: TextStyle(
                                                fontSize: 15,fontFamily: "Lato",
                                                color: Colors.grey),),

                                            SizedBox(height: 5),

                                            Text('24 March 21 /11.00 PM', style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold,
                                                fontFamily: "Lato",
                                                color: Colors.grey
                                            ),),


                                          ],


                                        ),
                                      ),
                                    )
                                  ],
                                )
                            ),


                            Container(
                                height: SizeConfig.screenHeight * 0.14,
                                width: SizeConfig.screenWidth * 0.92,
                                margin:EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration:
                                BoxDecoration(color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10),),
                                child: Row(
                                  children: [
                                    Container(
                                      height: SizeConfig.screenHeight * 0.13,
                                      width: SizeConfig.screenWidth * 0.2,
                                      child: Image.asset(
                                        AppImage.getPath("tenis_pic"),
                                        fit: BoxFit.fill,),

                                      decoration:
                                      BoxDecoration(color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),),


                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 5,),
                                          Text('Table tenis For grade 1 ', style: TextStyle(
                                              fontSize: 17,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.black),),
                                          SizedBox(height: 12,),

                                          Text('By Organiser ', style: TextStyle(
                                              fontSize: 15,fontFamily: "Lato",
                                              color: Colors.grey),),

                                          SizedBox(height: 5),

                                          Text('24 March 21 /11.00 PM', style: TextStyle(
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


                            InkWell(
                              // onTap: () => Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => event_details()),
                              // ),

                              child: Container(
                                  height: SizeConfig.screenHeight * 0.14,
                                  width: SizeConfig.screenWidth * 0.92,
                                  margin:EdgeInsets.all(10),
                                  padding: EdgeInsets.all(10),
                                  decoration:
                                  BoxDecoration(color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: SizeConfig.screenHeight * 0.13,
                                        width: SizeConfig.screenWidth * 0.2,
                                        child: Image.asset(
                                          AppImage.getPath("coding_pic"),
                                          fit: BoxFit.fill,),
                                        decoration:
                                        BoxDecoration(color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(10),),


                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 12),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 5,),
                                            Text('Coding bootcamp for kids ', style: TextStyle(
                                                fontSize: 17,fontWeight: FontWeight.bold,
                                                fontFamily: "Lato",
                                                color: Colors.black),),
                                            SizedBox(height: 12,),

                                            Text('By Organiser ', style: TextStyle(
                                                fontSize: 15,fontFamily: "Lato",
                                                color: Colors.grey),),

                                            SizedBox(height: 5),

                                            Text('24 March 21 /11.00 PM', style: TextStyle(
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
                              // onTap: () => Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => event_details()),
                              // ),

                              child: Container(
                                  height: SizeConfig.screenHeight * 0.14,
                                  width: SizeConfig.screenWidth * 0.92,
                                  margin:EdgeInsets.all(10),
                                  padding: EdgeInsets.all(10),
                                  decoration:
                                  BoxDecoration(color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: SizeConfig.screenHeight * 0.13,
                                        width: SizeConfig.screenWidth * 0.2,
                                        child: Image.asset(
                                          AppImage.getPath("coding_pic"),
                                          fit: BoxFit.fill,),
                                        decoration:
                                        BoxDecoration(color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(10),),


                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 12),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 5,),
                                            Text('Coding bootcamp for kids ', style: TextStyle(
                                                fontSize: 17,fontWeight: FontWeight.bold,
                                                fontFamily: "Lato",
                                                color: Colors.black),),
                                            SizedBox(height: 12,),

                                            Text('By Organiser ', style: TextStyle(
                                                fontSize: 15,fontFamily: "Lato",
                                                color: Colors.grey),),

                                            SizedBox(height: 5),

                                            Text('24 March 21 /11.00 PM', style: TextStyle(
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
                              // onTap: () => Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => event_details()),
                              // ),

                              child: Container(
                                  height: SizeConfig.screenHeight * 0.14,
                                  width: SizeConfig.screenWidth * 0.92,
                                  margin:EdgeInsets.all(10),
                                  padding: EdgeInsets.all(10),
                                  decoration:
                                  BoxDecoration(color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: SizeConfig.screenHeight * 0.13,
                                        width: SizeConfig.screenWidth * 0.2,
                                        child: Image.asset(
                                          AppImage.getPath("coding_pic"),
                                          fit: BoxFit.fill,),
                                        decoration:
                                        BoxDecoration(color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(10),),


                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 12),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 5,),
                                            Text('Coding bootcamp for kids ', style: TextStyle(
                                                fontSize: 17,fontWeight: FontWeight.bold,
                                                fontFamily: "Lato",
                                                color: Colors.black),),
                                            SizedBox(height: 12,),

                                            Text('By Organiser ', style: TextStyle(
                                                fontSize: 15,fontFamily: "Lato",
                                                color: Colors.grey),),

                                            SizedBox(height: 5),

                                            Text('24 March 21 /11.00 PM', style: TextStyle(
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

                            Container(
                                height: SizeConfig.screenHeight * 0.14,
                                width: SizeConfig.screenWidth * 0.92,
                                margin:EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration:
                                BoxDecoration(color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10),),
                                child: Row(
                                  children: [
                                    Container(
                                      height: SizeConfig.screenHeight * 0.13,
                                      width: SizeConfig.screenWidth * 0.2,
                                      child: Image.asset(
                                        AppImage.getPath("coding_pic"),
                                        fit: BoxFit.fill,),
                                      decoration:
                                      BoxDecoration(color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),),


                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 5,),
                                          Text('Coding bootcamp for kids ', style: TextStyle(
                                              fontSize: 17,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.black),),
                                          SizedBox(height: 12,),

                                          Text('By Organiser ', style: TextStyle(
                                              fontSize: 15,fontFamily: "Lato",
                                              color: Colors.grey),),

                                          SizedBox(height: 5),

                                          Text('24 March 21 /11.00 PM', style: TextStyle(
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

                            Container(
                                height: SizeConfig.screenHeight * 0.14,
                                width: SizeConfig.screenWidth * 0.92,
                                margin:EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration:
                                BoxDecoration(color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10),),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 70,
                                      child: Image.asset(
                                        AppImage.getPath("coding_pic"),
                                        fit: BoxFit.fill,),

                                      decoration:
                                      BoxDecoration(color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),),


                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 5,),
                                          Text('Coding bootcamp for kids ', style: TextStyle(
                                              fontSize: 17,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.black),),
                                          SizedBox(height: 12,),

                                          Text('By Organiser ', style: TextStyle(
                                              fontSize: 15,fontFamily: "Lato",
                                              color: Colors.grey),),

                                          SizedBox(height: 5),

                                          Text('24 March 21 /11.00 PM', style: TextStyle(
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


                          ],
                        ),
                      ),
                  ),
              )
            ],
          ),
        ),


      ),
    );
  }
}
