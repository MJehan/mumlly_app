import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/childPopup.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';

class Transfer_child extends StatefulWidget {
  static const String routeName = "Transfer_child";
  const Transfer_child({super.key});

  @override
  State<Transfer_child> createState() => _Transfer_childState();
}

class _Transfer_childState extends State<Transfer_child> {
  String dropdownValue = 'Chose team';
  String dropdownValue1 = 'Chose team';
  String dropdownValue2 = 'Chose team';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFEF9),
      appBar: AppBar(
          toolbarHeight: 80,
          title: const Text(
            '    Tranfer Child',
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
              padding: const EdgeInsets.fromLTRB(20, 120, 20, 40),
              child: Container(
                height: SizeConfig.screenHeight * 0.45,
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
            
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text(
                            'Term',
                            style: TextStyle(fontSize: 18,
                                fontFamily: "Lato",
                                color: Colors.grey.shade500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            height: SizeConfig.screenHeight*0.057,
                            width: SizeConfig.screenWidth * 0.80,
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xffF4EAB0)
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              padding: EdgeInsets.only(left: 20),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                items: <String>[
                                  'Chose team',
                                  'one',
                                  'two',
                                  'three'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(fontSize: 20,
                                        fontFamily: "Lato",),
                                    ),
                                  );
                                }).toList(),
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'School',
                            style: TextStyle(fontSize: 18,fontFamily: "Lato",
                                color: Colors.grey.shade500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            height: SizeConfig.screenHeight*0.057,
                            width: SizeConfig.screenWidth * 0.80,
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xffF4EAB0)),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                      AppImage.getPath("school_icon"),
                                      fit: BoxFit.fill,)
                                ),
            
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  child: DropdownButton<String>(
                                    value: dropdownValue1,
                                    items: <String>[
                                      'Chose team',
                                      'one',
                                      'two',
                                      'three'
                                    ].map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: TextStyle(fontSize: 20,
                                            fontFamily: "Lato",),
                                        ),
                                      );
                                    }).toList(),
                                    underline: Container(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue1 = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Share Assesment report',
                            style: TextStyle(fontSize: 18,
                                fontFamily: "Lato",
                                color: Colors.grey.shade500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15, right: 15),
                            height: SizeConfig.screenHeight*0.057,
                            width: SizeConfig.screenWidth * 0.80,
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xffF4EAB0)),
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              padding: EdgeInsets.only(left: 20),
                              child: DropdownButton<String>(
                                value: dropdownValue2,
                                items: <String>[
                                  'Chose team',
                                  'one',
                                  'two',
                                  'three'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(fontSize: 20,
                                        fontFamily: "Lato",),
                                    ),
                                  );
                                }).toList(),
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue2 = newValue!;
                                  });
                                },
                              ),
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: DefaultButtonWithGradient(
              buttonText: "Transfer Child",
              paddingTop: 10,
              paddingBottom: 10,
              // horizontalPading: 50,
            
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => child_popup()),
              ),
              // onTap: () {
              //   Navigator.of(context).pushNamed(add_new_child.routeName);
              // },
            ),
          ),
        ],
      ),
    );
  }
}
