import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';

class wow_moments extends StatefulWidget {
  const wow_moments({super.key});

  @override
  State<wow_moments> createState() => _wow_momentsState();
}

class _wow_momentsState extends State<wow_moments> {
  DateTime setDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFEF9),
      appBar: AppBar(
          toolbarHeight: 80,
          title: const Text(
            '            Your Moments',
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
            margin:EdgeInsets.fromLTRB(20, 50, 20, 20),
            height: SizeConfig.screenHeight * 0.1,
            width: SizeConfig.screenWidth * 0.9,

            decoration: BoxDecoration(
              boxShadow: [
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
              child: Row(
                children: [
                  Container(
                    height: 74,
                    width: 70,
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
          SizedBox(height: 5,),
          Expanded(
            child: SingleChildScrollView(

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child:
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15,10,0,0),
                          height: 160,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          height: 100,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(15,10,0,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          height: 135,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(15,10,0,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          height: 135,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(15,10,0,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          margin: EdgeInsets.fromLTRB(15,10,0,0),
                          height: 80,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          height: 130,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(15,10,0,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          height: 45,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(15,10,0,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ],
                  ),
                  ),
                  Expanded(
                    child:
                  Column(
                    children: [
                      Container(
                          height: 80,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(20,10,15,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          height: 130,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(20,10,15,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          height: 100,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(20,10,15,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          height: 135,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(20,10,15,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          height: 160,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(20,10,15,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          height: 80,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(20,10,15,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      Container(
                          height: 135,
                          width: 180,
                          margin: EdgeInsets.fromLTRB(20,10,15,0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ],
                  ),
                  ),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
