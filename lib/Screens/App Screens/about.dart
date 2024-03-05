import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'package:new_mumlly_app/Utilities/utility.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        toolbarHeight: 80,


      ),


      body: Column(

        children: [
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: SizeConfig.screenHeight*0.1,
              width: MediaQuery.of(context).size.width,
            
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'Terms and Conditions',
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
                      'Welcome to [Mumly App]! Before using our app,'
                          ' please read the following terms and conditions carefully',
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
                Utility.pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
