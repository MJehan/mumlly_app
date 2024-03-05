import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/eventDetails.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/event_details2.dart';
import 'package:new_mumlly_app/Screens/Student/student_home_screen.dart';
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
        color: Color(0xFF283FB1),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



          SizedBox(
          height: 60,),
            InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentHomeScreen()),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Icon(Icons.arrow_back_ios_new,
                    color: Colors.white,),
                )
            ),
            const SizedBox(height: 5),

            Container(
              margin: EdgeInsets.all(10),
              child: const Center(
                child: Text(
                  'We design after School\n activities that are '
                    'set to \ninhance the creativity \nand brain '
                    'development of \nyour child',
                  style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.bold,
                    fontFamily: "Lato",
                    color: Color(0xFFEAEAEA)),),
              ),
            ),


            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEAEAEA),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          SizedBox(height: 15),

                          const Padding(
                            padding: EdgeInsets.only(left: 15.0, top: 20),
                            child: Text('Schedule Event',
                              style: TextStyle(
                                fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                fontFamily: "Lato",
                                color: Colors.black
                              ),
                            ),
                          ),


                          SizedBox(
                            height: 10,
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
                                BoxDecoration(
                                  color: Color(0xFFEAEAEA),
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
                                      child: const Column(
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
                              MaterialPageRoute(builder: (context) => EventDetails2()),
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
                                      child: const Column(
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
                                BoxDecoration(
                                  color: Color(0xFFEAEAEA),
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
                              MaterialPageRoute(builder: (context) => EventDetails2()),
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
                                      child: const Column(
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
                                BoxDecoration(
                                  color: Color(0xFFEAEAEA),
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
                              MaterialPageRoute(builder: (context) => EventDetails2()),
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
