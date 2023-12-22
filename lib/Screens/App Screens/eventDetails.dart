import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Utilities/images.dart';

class event_details extends StatefulWidget {
  const event_details({super.key});

  @override
  State<event_details> createState() => _event_detailsState();
}

class _event_detailsState extends State<event_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        toolbarHeight: 80,
        title: Center(
          child: const Text(
            'Choose Date',
            style: TextStyle(fontFamily: "Lato",),
          ),
        ),

        flexibleSpace: Container(
          decoration: BoxDecoration(

            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),

            ),

            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: <Color>[
                  Colors.white,
                  Colors.purple.shade50,
                  Colors.purple.shade600.withOpacity(0.3)
                ]),
          ),
        ),


      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                margin: EdgeInsets.only(left: 50),
                child: Column(
                  children: [
                    Center(
                      child: Text('Details', style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                          color: Colors.grey),),
                    ),

                  ],
                ),
              ),
            ],
          ),


          Center(
            child: Container(
              height: 200,
              width: 330,
              child: Image.asset(
                AppImage.getPath("code"),
                fit: BoxFit.fill,),
              margin: EdgeInsets.all(10),

              decoration: BoxDecoration(
                color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20)
              ),


            ),
          ),
          SizedBox(height: 10,),

          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Coding Bootcamp For Kids', style: TextStyle(
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
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 140,
            width: 310,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
              border: Border.all(),

            ),
            child: Column(
              children: [
                Row(
                  children: [

                    Container(
                      height: 60,
                      width: 70,
                      margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child: Text('Time and Date', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                          color: Colors.grey),),
                    ),
                    SizedBox(width: 50,),

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


                  ],
                ),
                Row(
                  children: [

                    Container(
                      height: 40,
                      width: 100,
                      margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child: Text('Location', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                          color: Colors.grey),),
                    ),
                    SizedBox(width: 22,),

                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 140,
                          child: Text('Lepdek convention centre, Sukabumi', style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold,
                              fontFamily: "Lato",
                              color: Colors.black),),
                        ),


                      ],
                    ),


                  ],
                ),
              ],
            ),

          ),
          SizedBox(height: 15,),

          Container(
            height: 40,
            width: 200,
            margin: EdgeInsets.only(left: 25),
            child: Text('Participants', style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold,
                fontFamily: "Lato",
                color: Colors.black),),
          ),
          Row(
            children: [
              SizedBox(width: 25,),
              SizedBox(

                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade400,
                    ),
                    child: Text('Send' , style: TextStyle(color: Colors.white,
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
                    child: Text('Send' , style: TextStyle(color: Colors.white,
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
                    child: Text('' , style: TextStyle(color: Colors.white),
                    ),
                  )),
              SizedBox(width: 8,),
              SizedBox(

                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    child: Text('10+', style: TextStyle(
                        fontSize: 18,fontFamily: "Lato",
                        color: Colors.white),),
                  )),
              SizedBox(width: 8,),
            ],

          ),
          SizedBox(height: 15,),

          DefaultButtonWithGradient(
            buttonText: "Book and Pay ticket",
            paddingTop: 10,
            paddingBottom: 10,
            horizontalPading: 50,
            // onTap: () {
            //   Navigator.of(context).pushNamed(ticket.routeName);
            // },
          ),


        ],
      ),
    );
  }
}
