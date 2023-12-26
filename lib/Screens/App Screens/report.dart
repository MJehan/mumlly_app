import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:new_mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';


class report extends StatefulWidget {
  const report({super.key});

  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {

  final Color _containerColor = AppColor.cream;

  DateTime setDate = DateTime.now();

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
      appBar: AppBar(

        toolbarHeight: 80,
        title: const Text(
          '       Choose Date',
          style: TextStyle(fontFamily: "Lato",),
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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
       // mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Container(
           margin:EdgeInsets.fromLTRB(20, 50, 20, 50),
           height: SizeConfig.screenHeight * 0.095,
           width: SizeConfig.screenWidth * 0.88,

           decoration: BoxDecoration(
             boxShadow: const [
               BoxShadow(
                 color: Colors.grey,
                 offset: Offset(0.0, 4.0),
                 blurRadius: 4.0,
               ),
             ],
             color:AppColor.cream,
             borderRadius: BorderRadius.circular(20),
           ),

           child: SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Center(
               child: Row(
                 children: [
                   Container(
                       height: 74,
                       width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('1',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('2',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('3',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('4',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('5',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('6',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('7',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('8',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('9',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('10',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('11',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('12',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('13',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('14',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('15',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('16',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('17',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('18',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('19',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('20',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('21',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('22',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('23',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('24',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('25',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('26',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('27',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('28',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('29',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),
                   Container(
                     height: 74,
                     width: 75,
                     child: Center(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('30',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w400),),
                           SizedBox(height: 8,),

                           Text('Nov',
                             style: TextStyle(fontSize: 18,
                                 fontFamily: "Lato",
                                 fontWeight: FontWeight.w300),),
                         ],
                       ),
                     ),

                     margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),

                     ),
                   ),






                 ],
               ),
             ),
           ),
         ),

          SizedBox(height: 40,),
          InkWell(
            onTap: () {
              _getImage();
            },
            child: Container(
              height: 130,
              width: 130,

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

          SizedBox(height: 20,),

          const SizedBox(
            height: 150,
            width: 300,
            child: Text('No report available for today',
            style: TextStyle(fontSize: 30, fontFamily: "Lato",
                fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 80,),
          DefaultButtonWithGradient(
            buttonText: "Creat Report",
            paddingTop: 10,
            paddingBottom: 10,
            horizontalPading: 50,
            onTap: () {

            },
          ),
        ],
      ),

    );
  }
}
