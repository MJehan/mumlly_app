import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/dropdwon.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';

class Special_notes extends StatefulWidget {
  const Special_notes({super.key});

  @override
  State<Special_notes> createState() => _Special_notesState();
}

class _Special_notesState extends State<Special_notes> {
  String dropdownValue = 'type of note ?';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFEF9),
      appBar: AppBar(
          toolbarHeight: 80,
          title: const Text(
            '      Leave a Special Notes',
            style: TextStyle(fontFamily: "Lato",),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(0),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    AppColor.defaultButtonColor.withOpacity(0.6),
                    //AppColor.defaultColor1,
                    AppColor.white.withOpacity(0.1)
                  ]
              ),
            ),
          )
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 120, 20, 80),
              child: Container(
               height: SizeConfig.screenHeight * 0.4,
                width: SizeConfig.screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          margin: EdgeInsets.only(left: 15),
                          child: Text('Category', style: TextStyle(
                              fontSize: 18, fontFamily: "Lato",
                              color: Colors.grey.shade500),),
                        ),],
                    ),
                    SizedBox(height: 7,),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                            height: SizeConfig.screenHeight*0.057,
                            width: SizeConfig.screenWidth * 0.80,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(color:Colors.yellow.shade200 ),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Container(
                                margin:EdgeInsets.all(5),

                                child: CustomDropdown())
                        ),
                      ],
                    ),
                    SizedBox(height: 22,),

                    TextField(

                      decoration: InputDecoration(
                        // filled: true,
                        labelText: ' Type your notes here',
                        labelStyle:TextStyle(
                          fontSize: 18,
                          fontFamily: "Lato",
                          color: Colors.grey.shade500,
                        ),


                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0), // Set the border radius
                          borderSide: BorderSide.none, // Remove the border
                        ),
                        contentPadding: EdgeInsets.only(left: 15),

                      ),

                    ),


                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: DefaultButtonWithGradient(
              buttonText: "Send",
              paddingTop: 10,
              paddingBottom: 10,
              // horizontalPading: 50,
              onTap: () {

              },
            ),
          ),
        ],
      ),
    );
  }
}