import 'package:flutter/material.dart';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/childPopup.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';




class add_new_child extends StatefulWidget {
  static const String routeName = "add_new_child";
  const add_new_child({super.key});

  @override
  State<add_new_child> createState() => _add_new_childState();
}

class _add_new_childState extends State<add_new_child> {
  String dropdownValue = 'Calender';
  String dropValue = 'Choose School';
  String dValue = 'Choose Class';

  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image');
      }
    });
  }
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = DateTime(picked.year, picked.month, picked.day);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          toolbarHeight: 80,
          title: const Text(
            '    Add New Child',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: SizeConfig.screenHeight * 0.3,
              width: SizeConfig.screenWidth * 0.9,
              margin: EdgeInsets.fromLTRB(15, 30, 15, 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(4, 4), // Shadow position
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Center(
                    child: InkWell(
                      onTap: () {
                        _pickImage();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _image == null
                              ?  const CircleAvatar(
                            radius: 45.0,
                            child: Icon(
                              Icons.camera_alt,
                              size: 35.0,
                            ),
                          )
                              : ClipOval(
                            child: Image.file(
                              _image!,
                              height: 90.0,
                              width: 90.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:5,),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: const Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
                        fontSize: 14,
                      ),
                    ),

                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    padding: EdgeInsets.only(left: 15),
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color:Color(0xffF4EAB0)
                      ),
                    ),
                    child: const TextField (
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Full Name',
                        hintStyle: TextStyle(color: Colors.grey,
                            fontWeight: FontWeight.w400,
                        fontSize: 14)
                      ),
                    )

                  ),
                ],
              ),

            ),
            const SizedBox(height: 10,),
            Container(
              height: SizeConfig.screenHeight * 0.38,
              width: SizeConfig.screenWidth * 0.9,
              margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(4, 4), // Shadow position
                  ),
                ],
              ),
        
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: const Text(
                      'Date of Birth',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
                        fontSize: 14,
                      ),
                    ),
        
                  ),
                  SizedBox(height: 5),

                  InkWell(
                    onTap: (){
                      _selectDate(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.only(left: 15),
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color:Color(0xffF4EAB0)),


                          ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _selectedDate == null
                              ? const Text('Calender',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Lato",
                              fontSize: 14,
                            ),
                          )
                              : Text('   ${DateFormat('MMMM dd, yyyy').format(_selectedDate!)}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Lato",
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: const Text(
                      'School',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
                        fontSize: 14,
                      ),
                    ),

                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color:Color(0xffF4EAB0)),

                    ),
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            height: 20,
                            width: 20,
                            child: Image.asset(
                              AppImage.getPath("school_icon"),
                              fit: BoxFit.fill,)
                        ),
                        SizedBox(width: 15,),

                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: DropdownButton<String>(
                            value: dropValue,
                            items: <String>[
                              'Choose School',
                              'AUST',
                              'EWU',
                              'BRAC'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(fontSize: 14,
                                      fontFamily: "Lato",
                                      color: Colors.grey),
                                ),
                              );
                            }).toList(),
                            underline: Container(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),

                  ),

                  SizedBox(height: 10),

                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: const Text(
                      'Class',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
                        fontSize: 14,
                      ),
                    ),

                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color:Color(0xffF4EAB0)),

                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                            height: 20,
                            width: 20,
                            child: Image.asset(
                              AppImage.getPath("school_icon"),
                              fit: BoxFit.fill,)
                        ),
                        SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: DropdownButton<String>(
                            value: dValue,
                            items: <String>[
                              'Choose Class',
                              'BSc',
                              'MSc',
                              'PHD'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 14,
                                      fontFamily: "Lato",color: Colors.grey),
                                ),
                              );
                            }).toList(),
                            underline: Container(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),

                  ),
                ],
              ),
        
            ),
            SizedBox(height: 20,),
            DefaultButtonWithGradient(
              buttonText: "Add Child",
              paddingTop: 10,
              paddingBottom: 10,
              // horizontalPading: 50,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => child_popup()),
              ),

              // onTap: () {
              //   Navigator.of(context).pushNamed(child_popup.routeName);
              // },
            ),
        
        
          ],
        ),
      )



    );
  }
}
