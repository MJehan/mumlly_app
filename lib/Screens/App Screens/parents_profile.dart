import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/parents_edit_profile.dart';
import 'package:new_mumlly_app/Screens/Login%20Screens/login_screen.dart';
import 'package:new_mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';


class ParentsProfileScreen extends StatefulWidget {
  const ParentsProfileScreen({super.key});

  @override
  State<ParentsProfileScreen> createState() => _ParentsProfileScreenState();
}

class _ParentsProfileScreenState extends State<ParentsProfileScreen> {
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
      backgroundColor: Colors.white,
      body: Column(

        children: [
          SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
            ],
          ),
          Container(
            child:Column(
              children: [
                SizedBox(width: 40,),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ZainabEditProfileScreen()),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
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
                SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    'Zainab Bashir',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Lato",
                      fontSize: 17,fontWeight: FontWeight.bold,
                    ),
                  ),

                ),

                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    '+88 01327 223282 ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Lato",
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Row(
                    children: [
                      Icon(Icons.email_outlined),
                      SizedBox(width: 10,),

                      Text(
                        'Nainab@gmail.com ',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Lato",
                          fontSize: 18,fontWeight: FontWeight.w500,
                        ),
                      ),
                     Spacer(),

                      Container(
                        height: 31,
                        width: 85,
                        decoration: BoxDecoration(
                            color: AppColor.defaultButtonColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child:const Center(
                          child: Text('VERYFY', style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Lato",
                              fontWeight:FontWeight.w500,
                              color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 15,
                  color: Colors.grey.shade300,
                  thickness: 4,
                ),



              ],
            ),
          ),
          SizedBox(height: 8,),
          Container(
            color: Colors.white60,

            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text(
                    'My Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                const Row(
                  children: [
                    SizedBox(width: 25,),
                    Icon(Icons.home_filled,
                        color: Colors.grey),
                    SizedBox(width: 15,),
                    Text(
                      'Home Address ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,fontWeight: FontWeight.bold,
                      ),
                    ),




                  ],
                ),

                Divider(
                  height: 10,
                  color: Colors.grey.shade300,
                  thickness: 1,
                ),
                const SizedBox(height: 15),

                const Row(
                  children: [
                    SizedBox(width: 25,),
                    Icon(Icons.note_add_rounded, color: Colors.grey,),
                    SizedBox(width: 15,),
                    Text(
                      'Work Address ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 15,
                  color: Colors.grey.shade300,
                  thickness: 1,
                ),

                const SizedBox(height: 10),
                const Row(
                  children: [
                    SizedBox(width: 25,),
                    Icon(Icons.phone_paused_outlined, color: Colors.grey),
                    SizedBox(width: 15,),
                    Text(
                      'Alt Phone Nb ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 25,
                  color: Colors.grey.shade300,
                  thickness: 4,
                ),

                SizedBox(height: 20,),

                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 25,),
                      Icon(
                          Icons.logout,
                          color: Colors.grey
                      ),
                      SizedBox(width:15),

                      Text(
                        'Sign Out ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,fontWeight: FontWeight.bold,
                        ),
                      ),


                    ],
                  ),
                ),
                Divider(
                  height: 20,
                  color: Colors.grey.shade300,
                  thickness: 1,
                ),
              ],
            ),
          ),


          // Container(
          //   color: Colors.white60,
          //   child: const Column(
          //     children: [
          //       SizedBox(height: 20,),
          //       Row(
          //         children: [
          //           SizedBox(width: 30,),
          //           Icon(Icons.logout,
          //               color: Colors.grey),
          //           SizedBox(width: 30,),
          //
          //           Text(
          //             'Logout ',
          //             style: TextStyle(
          //               color: Colors.grey,
          //               fontSize: 18,fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //           Divider(
          //             height: 5,
          //             color: Colors.grey,
          //             thickness: 2,
          //           ),
          //
          //         ],
          //       ),
          //
          //
          //
          //
          //
          //     ],
          //   ),
          // ),
        ],

      ),
    );
  }
}
