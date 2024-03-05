import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Utilities/doted_line.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'package:new_mumlly_app/Utilities/utility.dart';
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
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60),
          Row(
            children: [
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

              SizedBox(width: 100,),
              Container(
                child: const Column(
                  children: [
                    Center(
                      child: Text('My Ticket', style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w500,
                          fontFamily: "Lato",
                          color: Colors.black),),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Card(
              margin: EdgeInsets.all(15),
              color: Colors.white,
              elevation: 15,
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.only(bottom: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Center(
                          child: Container(
                            height: SizeConfig.screenHeight*0.25,
                            width: SizeConfig.screenWidth*0.95,
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
                          margin: EdgeInsets.only(left: 15),
                          child: const Column(
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
                        const Row(
                          children: [
                            SizedBox(width: 15,),

                            Text('Date', style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,
                                fontFamily: "Lato",
                                color: Colors.grey),),
                            Spacer(),

                            Text('Times', style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,
                                fontFamily: "Lato",
                                color: Colors.grey),),
                            SizedBox(width: 15,)

                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 15,),

                            Text('23 March 2023', style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,
                                fontFamily: "Lato",
                                color: Colors.black),),
                            Spacer(),

                            Text('1:30 PM', style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,
                                fontFamily: "Lato",
                                color: Colors.black),),
                            SizedBox(width: 15,)

                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: Container(
                            width: SizeConfig.screenWidth,
                            child: CustomPaint(
                              painter: HorizontalDottedLinePainter(),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 35,
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
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: DefaultButtonWithGradient(
              buttonText: "Save ticket",
              paddingTop: 10,
              paddingBottom: 10,
              horizontalPading: 0,
              onTap: () {
              },
            ),
          ),
        ],
      ),


    );
  }
}
