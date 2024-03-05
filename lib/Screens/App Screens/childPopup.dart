import 'package:flutter/material.dart';

import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';


class child_popup extends StatefulWidget {
  static const String routeName = "child_popup";
  const child_popup({super.key});

  @override
  State<child_popup> createState() => _child_popupState();
}

class _child_popupState extends State<child_popup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        toolbarHeight: 80,


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
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: 470,
              width: MediaQuery.of(context).size.width,
            
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            
                    // padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 120,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xff7ac6cb), Color(0xFFFF00)]),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(
                        child: Icon(Icons.person_outline),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'Child Added Succesfully',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                          fontWeight: FontWeight.w500,
                        fontFamily: "Lato",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
            
                  Container(
                   height: 250,
                    width: 240,
                    child: const Text(
                      'We have sent your request to your '
                          'child’s school, the child managementdashboard'
                          ' will be availableonce they confirm',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
                        fontSize: 14,
                      ),
                    ),
                  ),
            
            
                ],
              ),
            ),
          ),


         
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: DefaultButtonWithGradient(
              buttonText: "ok",
              paddingTop: 10,
              paddingBottom: 10,
              // horizontalPading: 50,
              onTap: () {
                Navigator.of(context).pushNamed(StudentHomeScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
