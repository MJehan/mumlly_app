import 'package:flutter/material.dart';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';




class add_new_child extends StatefulWidget {
  static const String routeName = "add_new_child";
  const add_new_child({super.key});

  @override
  State<add_new_child> createState() => _add_new_childState();
}

class _add_new_childState extends State<add_new_child> {
  String dropdownValue = 'Calender';
  String dropValue = 'School';
  String dValue = 'Class';

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
          '     Add New Child',
          style: TextStyle(fontSize: 20,
              fontFamily: "Lato",
              fontWeight: FontWeight.w500),
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
        ),


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 220,
                  width: 350,
                  margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
        
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
                      InkWell(
                        onTap: () {
                          _getImage();
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                          height: 80,
                          width: 80,

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
                      SizedBox(height: 15,),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        child: const Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Lato",
                            fontSize: 14,
                          ),
                        ),
        
                      ),
                      const SizedBox(height: 15),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        height: 50,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.deepPurple.shade100,
                          ),
                        ),
                        child: const TextField (
                          decoration: InputDecoration(
                              border: InputBorder.none,
        
                              hintText: '   Enter Your Name'
                          ),
                        )
        
                      ),
                    ],
                  ),
        
                ),
        
              ],
            ),
            const SizedBox(height: 15,),
            Container(
              height: 315,
              width: 350,
              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
        
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
                        color: Colors.black,
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
                      margin: EdgeInsets.only(left: 25),
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.deepPurple.shade100,),


                          ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _selectedDate == null
                              ? const Text('No date selected.')
                              : Text(' ${DateFormat('    MMMM dd, yyyy').format(_selectedDate!)}',
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
                      'Choose School',
                      style: TextStyle(
                        color: Colors.black,
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

                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.deepPurple.shade100,),

                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 30),
                      child: DropdownButton<String>(
                        value: dropValue,
                        items: <String>[
                          'School',
                          'AUST',
                          'EWU',
                          'BRAC'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 18,
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

                  ),

                  SizedBox(height: 10),

                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: const Text(
                      'Choose Class',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Lato",
                        fontSize: 18,
                      ),
                    ),

                  ),
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.deepPurple.shade100,),

                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 30),
                      child: DropdownButton<String>(
                        value: dValue,
                        items: <String>[
                          'Class',
                          'BSc',
                          'MSc',
                          'PHD'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 18,
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

                  ),
                ],
              ),
        
            ),
            SizedBox(height: 20,),
            DefaultButtonWithGradient(
              buttonText: "Add Child",
              paddingTop: 10,
              paddingBottom: 10,
              horizontalPading: 50,
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
