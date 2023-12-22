import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';

class Transfer_child extends StatefulWidget {
  static const String routeName = "Transfer_child";
  const Transfer_child({super.key});

  @override
  State<Transfer_child> createState() => _Transfer_childState();
}

class _Transfer_childState extends State<Transfer_child> {
  String dropdownValue = 'Chose team';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 130,
          title: const Text(
            'Tranfer Child',
            style: TextStyle(fontFamily: "Lato",),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: <Color>[
                    Colors.white,
                    Colors.purple.shade50,
                    Colors.purple.shade600.withOpacity(0.3)
                  ]),
            ),
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 120, 40, 40),
            child: Container(
              height: 320,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
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

                        margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: Text(
                          'Term',
                          style: TextStyle(fontSize: 18,
                              fontFamily: "Lato",
                              color: Colors.black),
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
                          margin: EdgeInsets.only(left: 30),
                          height: 45,
                          width: 240,
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color:Colors.deepPurple.shade100),
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
                                    style: TextStyle(fontSize: 20,
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
                              color: Colors.black),
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
                          margin: EdgeInsets.only(left: 30),
                          height: 45,
                          width: 240,
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color:Colors.deepPurple.shade100),
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
                                    style: TextStyle(fontSize: 20,
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
                          'Share Assesment report',
                          style: TextStyle(fontSize: 18,
                              fontFamily: "Lato",
                              color: Colors.black),
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
                          margin: EdgeInsets.only(left: 30),
                          height: 45,
                          width: 240,
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color:Colors.deepPurple.shade100),
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
                                    style: TextStyle(fontSize: 20,
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
                ],
              ),
            ),
          ),
          SizedBox(height: 60,),
          DefaultButtonWithGradient(
            buttonText: "Add New Child",
            paddingTop: 10,
            paddingBottom: 10,
            horizontalPading: 50,
            // onTap: () {
            //   Navigator.of(context).pushNamed(add_new_child.routeName);
            // },
          ),
        ],
      ),
    );
  }
}
