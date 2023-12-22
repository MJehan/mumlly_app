import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/eventDetails.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';


class event_page extends StatefulWidget {
  const event_page({super.key});

  @override
  State<event_page> createState() => _event_pageState();
}

class _event_pageState extends State<event_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.purple,
        child: Column(
          children: [

          SizedBox(
          height: 60,),

            Container(
              margin: EdgeInsets.all(20),
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
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          SizedBox(height: 20,),

                          const Center(
                            child: Text('Schedule Event',
                              style: TextStyle(
                                fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                fontFamily: "Lato",
                                color: Colors.black
                              ),
                            ),
                          ),


                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => event_details()),
                            ),

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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => event_details()),
                            ),

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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => event_details()),
                            ),

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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => event_details()),
                            ),

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



                        ],
                      ),
                    )))
          ],
        ),
      ),


    );
  }
}
