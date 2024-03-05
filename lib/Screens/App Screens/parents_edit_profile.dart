import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Common/login_custom_input_field.dart';
import 'package:new_mumlly_app/Provider/provider.dart';
import 'package:new_mumlly_app/Provider/theme_provider.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/utility.dart';
import 'package:provider/provider.dart';

class ZainabEditProfileScreen extends StatefulWidget {
  const ZainabEditProfileScreen({super.key});

  @override
  State<ZainabEditProfileScreen> createState() => _ZainabEditProfileScreenState();
}

class _ZainabEditProfileScreenState extends State<ZainabEditProfileScreen> {

  final _formKey = GlobalKey<FormState>();
  late ThemeProvider themeProvider;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool buttonChecker = true;
  CommonProvider commonProvider = Provider.of<CommonProvider>(Utility.context);
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {

    final _usernameTextController= TextEditingController();
    final _phoneTextController= TextEditingController();
    final _addressTextController= TextEditingController();
    final _emailTextController= TextEditingController();
    final _workAddressTextController= TextEditingController();
    final _altOhoneTextController= TextEditingController();

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
    themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
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
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        const SizedBox(height: 50,),
                        const Center(
                          child: Text(
                            'Edit your Information',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              color: Colors.grey
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 30,),

                              LoginCustomInputField(
                                controller: _usernameTextController,
                                hintText: "Change User Name", prefixIcon: Icon(Icons.person,size: 25 ),
                              ),
                              const SizedBox(height: 8,),
                              LoginCustomInputField(
                                controller: _emailTextController,
                                hintText: "Email", prefixIcon: Icon(Icons.email,size: 25 ),
                              ),
                              const SizedBox(height: 8,),
                              LoginCustomInputField(
                                controller: _phoneTextController,
                                hintText: "Phone Number", prefixIcon: Icon(Icons.phone,size: 25 ),
                                keyboardType: TextInputType.number,
                              ),
                              const SizedBox(height: 8,),
                              LoginCustomInputField(
                                controller: _altOhoneTextController,
                                hintText: "Alternative Phone Number", prefixIcon: Icon(Icons.call,size: 25 ),
                                keyboardType: TextInputType.number,
                              ),
                              const SizedBox(height: 8,),
                              LoginCustomInputField(
                                controller: _addressTextController,
                                hintText: "Change Home Address", prefixIcon: Icon(Icons.location_city,size: 25 ),
                              ),
                              const SizedBox(height: 8,),
                              LoginCustomInputField(
                                controller: _workAddressTextController,
                                hintText: "Change Work Address", prefixIcon: Icon(Icons.class_outlined,size: 25 ),
                              ),



                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),

              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: DefaultButtonWithGradient(
                  paddingTop: 12,
                  paddingBottom: 12,
                  buttonText: "Save",
                  color: AppColor.defaultColor,
                  onTap: () {
                    Utility.pop();
                  },
                ),
              ),

            ],
          ),
        
        
        ),
      ),


    );
  }
  void _togglePasswordView() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
