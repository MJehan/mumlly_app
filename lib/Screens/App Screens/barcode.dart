import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';



class ticket extends StatefulWidget {
  static const String routeName = "ticket";
  const ticket({super.key});

  @override
  State<ticket> createState() => _ticketState();
}

class _ticketState extends State<ticket> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          toolbarHeight: 80,
          title: const Text(
            '          My Ticket',style:
          TextStyle(fontSize: 18,
              fontFamily: "Lato",
              fontWeight: FontWeight.w500),
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
            Card(

              margin: EdgeInsets.all(20),

              color: Colors.white,
              elevation: 15,
              child: Column(
                children: [
                  Container(
                    height: SizeConfig.screenHeight * 0.71,
                    width: SizeConfig.screenWidth * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Center(
                          child: Container(
                            height: 200,
                            width: 320,
                            child: Image.asset(
                              AppImage.getPath("barcode"),
                              fit: BoxFit.fill,),
                              margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)
                            ),


                          ),
                        ),
                        SizedBox(height: 20,),

                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Cimengis Musical Festival', style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500,
                                  fontFamily: "Lato",
                                  color: Colors.black),),
                              SizedBox(height: 10,),

                              Text('By organizer', style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold,
                                  fontFamily: "Lato",
                                  color: Colors.grey),),


                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          height: 140,
                          width: 310,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),


                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [

                                  Container(

                                    child: Text(' Date', style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold,
                                        fontFamily: "Lato",
                                        color: Colors.grey),),
                                  ),
                                  Spacer(),

                                  Container(
                                    child: Text('Times', style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold,
                                        fontFamily: "Lato",
                                        color: Colors.grey),),
                                  ),


                                ],
                              ),
                              Row(
                                children: [

                                  Container(

                                    child: Text('23 March 2023', style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold,
                                        fontFamily: "Lato",
                                        color: Colors.black),),
                                  ),
                                  Spacer(),

                                  Column(
                                    children: [
                                      Container(

                                        child: Text('1:30 PM', style: TextStyle(
                                            fontSize: 15, fontWeight: FontWeight.bold,
                                            fontFamily: "Lato",
                                            color: Colors.black),),
                                      ),


                                    ],
                                  ),


                                ],
                              ),

                              SizedBox(
                                height: 30,
                              ),




                            ],
                          ),

                        ),


                        SizedBox(
                            height: 80,
                            width: 390,
                            child: Container(
                              height: 150,
                              child: SfBarcodeGenerator(
                                value: '8767382793737441',
                                showValue: true,

                              ),
                            )


                        )





                      ],


                    ),


                  ),

                ],
              ),

            ),
            DefaultButtonWithGradient(
              buttonText: "Save ticket",
              paddingTop: 10,
              paddingBottom: 10,
              horizontalPading: 50,
              onTap: () {
              },
            ),
          ],
        ),


      ),
    );
  }
}
