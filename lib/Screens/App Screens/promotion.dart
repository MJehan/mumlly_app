import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'package:new_mumlly_app/Utilities/utility.dart';

class PromotionDcreen extends StatefulWidget {
  const PromotionDcreen({super.key});

  @override
  State<PromotionDcreen> createState() => _PromotionDcreenState();
}

class _PromotionDcreenState extends State<PromotionDcreen> {
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

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Center(
                      child: Text(
                        'Celebrate Your Childs Milestone Achievement!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Lato",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: EdgeInsets.all(28.0),
                    child: Text(
                      'We are thrilled to announce that your child'
                          ' has been promoted to the next grade with '
                          'flying colors! 🌟 Join us in celebrating '
                          'their hard work, dedication, and academic success.',
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
