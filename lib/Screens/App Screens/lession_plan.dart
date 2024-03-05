import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 80,

          title: const Text(
            '',
            style: TextStyle(fontFamily: "Lato",),
          ),
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
          Container(
            child: const Text(
              '12 June 2024',
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Lato",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,

                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 120,
                    color: Colors.white,
                    child: Card(
                      margin: EdgeInsets.all(13),
                      color: AppColor.white,
                      elevation: 8,

                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Column(
                                children: [
                                  SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                   const Row(
                                    children: [
                                      Text(
                                        'Lession Name',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Lato",
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 150,),
                                      Text(
                                        ' 1:30-3:00 PM',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Lato",
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        child: Image.asset(
                                          AppImage.getPath("lession1"),
                                          fit: BoxFit.fill,)
                                      ),
                                      SizedBox(width: 5,),
                                      const Text(
                                        ' 1.5 hourse',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: "Lato",
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      Container(
                                          height: 10,
                                          width: 10,
                                          child: Image.asset(
                                            AppImage.getPath("lession2"),
                                            fit: BoxFit.fill,)
                                      ),
                                      SizedBox(width: 5,),
                                      const Text(
                                        'Teacher Name',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: "Lato",
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );


                }
            ),
          ),
        ],
      ),


    );
  }
}

