import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/barcode.dart';
import 'package:new_mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';

class EventDetails2 extends StatefulWidget {
  const EventDetails2({super.key});

  @override
  State<EventDetails2> createState() => _EventDetails2State();
}

class _EventDetails2State extends State<EventDetails2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60,),
          Row(
            children: [
              InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentHomeScreen()),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Icon(Icons.arrow_back_ios_new,
                      color: Colors.black,),
                  )
              ),

              SizedBox(width: 100,),
              Container(
                child: const Column(
                  children: [
                    Center(
                      child: Text('Details', style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w500,
                          fontFamily: "Lato",
                          color: Colors.black),),
                    ),

                  ],
                ),
              ),


            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Center(
                child: Container(
                  margin: EdgeInsets.all(15),
                  height: SizeConfig.screenHeight*0.25,
                  width: SizeConfig.screenWidth*0.95,
                  child: Image.asset(
                    AppImage.getPath("tennis"),
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                  ),


                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child:  const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tennis Match For Kids', style: TextStyle(
                    fontSize: 23, fontWeight: FontWeight.bold,
                    fontFamily: "Lato",
                    color: Colors.black),),
                SizedBox(height: 30,),

                Text('By organizer', style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold,
                    fontFamily: "Lato",
                    color: Colors.grey),),


              ],
            ),
          ),
          const SizedBox(height: 10,),



          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: SizeConfig.screenHeight*0.2,
            width: SizeConfig.screenWidth*0.95,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(),
            ),
            child: const Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 10),

                    Text('Time and Date', style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold,
                        fontFamily: "Lato",
                        color: Colors.grey),),
                    Spacer(),

                    Column(
                      children: [
                        Text('23 March 2023', style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold,
                            fontFamily: "Lato",
                            color: Colors.black),),

                        Text('11:30 PM', style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold,
                            fontFamily: "Lato",
                            color: Colors.black),),
                      ],
                    ),
                    SizedBox(width: 10),


                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 10,),

                    Text('Location', style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold,
                        fontFamily: "Lato",
                        color: Colors.grey),),
                    Spacer(),


                    Text('Lepdek convention \ncentre, Sukabumi', style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold,
                        fontFamily: "Lato",
                        color: Colors.black),),
                    SizedBox(width: 10,),


                  ],
                ),
              ],
            ),

          ),
          SizedBox(height: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Participants', style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold,
                      fontFamily: "Lato",
                      color: Colors.black),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      SizedBox(

                          height: 40,
                          width: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade400,
                            ),
                            child: const Text('Send' , style: TextStyle(color: Colors.white,
                              fontFamily: "Lato",),
                            ),
                          )),
                      SizedBox(width: 8,),

                      SizedBox(

                          height: 40,
                          width: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade400,
                            ),
                            child: const Text('Send' , style: TextStyle(color: Colors.white,
                              fontFamily: "Lato",),
                            ),
                          )),
                      SizedBox(width: 8,),

                      SizedBox(

                          height: 40,
                          width: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade400,
                            ),
                            child: const Text('' , style: TextStyle(color: Colors.white),
                            ),
                          )),
                      SizedBox(width: 8,),
                      SizedBox(

                          height: 40,
                          width: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.defaultButtonColor,
                            ),
                            child: const Text('10+', style: TextStyle(
                                fontSize: 18,fontFamily: "Lato",
                                color: Colors.white),),
                          )),
                      SizedBox(width: 8,),
                    ],

                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: DefaultButtonWithGradient(
              buttonText: "Book and Pay ticket",
              paddingTop: 10,
              paddingBottom: 10,
              // horizontalPading: 50,

              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ticket()),
              ),

            ),
          ),


        ],
      ),
    );
  }
}
