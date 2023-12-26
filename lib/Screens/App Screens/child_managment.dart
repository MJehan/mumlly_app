import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/lession_plan.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/profile_events.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/report.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/special_note.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/transfer.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/wow_moments.dart';
import 'package:new_mumlly_app/Screens/Student/attendance_screen.dart';
import 'package:new_mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:new_mumlly_app/Utilities/images.dart';


class HomeScrean extends StatefulWidget {
  static const String routeName = "HomeScrean";
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {


  final List<Widget> _pages = [
    const StudentHomeScreen(),
    const AttendanceScreen(),
    const HomeScrean(),
  ];
  File? _image;

  Future<void> _getImage() async {
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
                _getImage();
              },
              child: Container(
                height: 120,
                width: 120,

                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.grey.shade300
                ),
                // child: _image == null
                //     ? Text('No image selected.')
                //     : Image.file(_image!),
                child: const Center(
                  child: Text(
                    'Choose Image',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Lato",
                    ),
                  ),
                ),

              ),
            ),


                  SizedBox(
                    height: 15,
                  ),
                  Padding(
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
                    child: Padding(
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
                          MaterialPageRoute(builder: (context) => All_event_page()));
                    },
                  ),
                  Padding(
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
                    shadowColor: Colors.purple,
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => second()));
                      },
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
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
                                children: const [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    ' activities child',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    ' attendence, lesion plan, picture etc',
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
                    shadowColor: Colors.purple,
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Special_notes()));
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
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    ' Special Notes',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    ' leave a custom notes for etc',
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
                    shadowColor: Colors.purple,
                    elevation: 5,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Transfer_child()));
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
                                    'Transfer Child',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    ' Transfer child to another school',
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
                    shadowColor: Colors.purple,
                    elevation: 5,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => report()));
                      },
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                      height: 16,
                                      width: 12,
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
                                    'Reports',
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
                                    ' view each days reports,notes pictures',
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
                    shadowColor: Colors.purple,
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
                              Column(
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
                    shadowColor: Colors.purple,
                    elevation: 5,
                    child: InkWell(
                      onTap: () {},
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
                                    '  Diary',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    ' View Todays Diary',
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
                    shadowColor: Colors.purple,
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






      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     height: 30,
      //     child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: <Widget>[
      //           IconButton(
      //               icon: Icon(Icons.home_filled),
      //
      //               onPressed: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => StudentHomeScreen(),
      //                   ),
      //                 );
      //               }
      //           ),
      //           IconButton(
      //               icon: Icon(Icons.calendar_today),
      //
      //               onPressed: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => AttendanceScreen(),
      //                   ),
      //                 );
      //               }
      //           ),
      //           IconButton(
      //               icon: Icon(Icons.person),
      //
      //               onPressed: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => HomeScrean(),
      //                   ),
      //                 );
      //               }
      //           ),
      //
      //         ]
      //     ),
      //   ),
      //   notchMargin: 40.0,
      // ),
    );
  }
}
