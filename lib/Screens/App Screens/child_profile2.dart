import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/lession_plan.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/parents_profile.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/wow_moments.dart';
import 'package:new_mumlly_app/Screens/Student/attendance_screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';

class ChildProfileScreen2 extends StatefulWidget {
  const ChildProfileScreen2({super.key});

  @override
  State<ChildProfileScreen2> createState() => _ChildProfileScreen2State();
}

class _ChildProfileScreen2State extends State<ChildProfileScreen2> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFEF9),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                    child: Text(
                      'School Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lato",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      _pickImage();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _image == null
                            ?  const CircleAvatar(
                          radius: 50.0,
                          child: Icon(
                            Icons.camera_alt,
                            size: 35.0,
                          ),
                        )
                            : ClipOval(
                          child: Image.file(
                            _image!,
                            height: 100.0,
                            width: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),


                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Lato",
                      ),
                    ),
                  ),
                  InkWell(
                    child: const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text(
                          'Edit Profile ',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w500
                          ),
                        )),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ParentsProfileScreen()));
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'Profile, post, performence etc ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: "Lato",
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 13),



          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.all(10),
                    color: Colors.white,
                    shadowColor: AppColor.defaultColor1,
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AttendanceScreen()));
                      },
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                        AppImage.getPath("main_clock"),
                                        fit: BoxFit.fill,)
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Attendance',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Lato",
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'View all lession plan',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Lato",
                                      fontSize: 12,
                                    ),

                                  ),
                                  SizedBox(height: 10,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Card(
                    margin: EdgeInsets.all(10),
                    color: Colors.white,
                    shadowColor: AppColor.defaultColor1,
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => second()));
                      },
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                        AppImage.getPath("main_clock"),
                                        fit: BoxFit.fill,)
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Lession plan',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Lato",
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'View all lession plan',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Lato",
                                      fontSize: 12,
                                    ),

                                  ),
                                  SizedBox(height: 10,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Card(
                    margin: EdgeInsets.all(10),
                    color: Colors.white,
                    shadowColor: AppColor.defaultColor1,
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => wow_moments()));
                      },
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                        AppImage.getPath("main_clock"),
                                        fit: BoxFit.fill,)
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Wow moment',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Lato",
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'View your childs best momment ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Lato",
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 10,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
