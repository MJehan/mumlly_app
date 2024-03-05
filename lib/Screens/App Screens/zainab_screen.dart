import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/parents_edit_profile.dart';
import 'package:new_mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:new_mumlly_app/Utilities/utility.dart';

class ZainabProfileScreen extends StatefulWidget {
  const ZainabProfileScreen({super.key});

  @override
  State<ZainabProfileScreen> createState() => _ZainabProfileScreenState();
}

class _ZainabProfileScreenState extends State<ZainabProfileScreen> {
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
                  onTap: () {
                    Utility.pop();
                  },
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ZainabEditProfileScreen()),
                      ),
                      child: const Padding(
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
                    ),
                  ],
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
                    'Zainab',
                    style: TextStyle(
                      color: Colors.grey,
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
                      fontSize: 15,
                      fontFamily: "Lato",
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    'School Name ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Lato",
                      fontSize: 18,
                    ),
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
                      fontFamily: "Lato",
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
                    SizedBox(width: 15),
                    Text(
                      'Home Address ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
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
                    Icon(Icons.note_add_rounded, color: Colors.grey,),
                    SizedBox(width: 15),
                    Text(
                      'School Address ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
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
                    Icon(Icons.insert_comment, color: Colors.grey),
                    SizedBox(width: 15),
                    Text(
                      'Class information ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
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



              ],
            ),
          ),

        ],

      ),
    );
  }
}
