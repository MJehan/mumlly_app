import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:new_mumlly_app/Common/side_bar.dart';
import 'package:new_mumlly_app/Screens/Student/notice%20screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';

class StudentHomeScreen extends StatefulWidget {
  static const String routeName = "StudentHomeScreen";
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: const NavDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: (){
                              _globalKey.currentState?.openDrawer();
                            },
                            //
                            icon: Icon(
                              Icons.menu,
                              color: AppColor.defaultColorLight,
                            ),
                          ),
                          const SizedBox(width: 30,),
                          SizedBox(
                            width: 260,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Morning!',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: AppColor.black,
                                      fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Md Jehan",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: AppColor.fTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      //getCommonProvider.getDriverDetails()!.data!.phoneCode! + getCommonProvider.getDriverDetails()!.data!.phoneNumber!
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.add_alert_rounded),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),

            SizedBox(
              height: SizeConfig.screenHeight * 0.7,
              child: SingleChildScrollView(
               child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: SizeConfig.screenWidth*0.73,
                            child: const Text(
                              "Manage your kids",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20,),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed(NoticeScreen.routeName);
                            },
                            child: Text(
                              "View all",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.fTextColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        CarouselSlider(
                          items: [
                            //1st Image of Slider
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              //elevation: 5,
                              child:Row(
                                children: [
                                  Image.asset(AppImage.getPath("card11"),fit: BoxFit.fill,),
                                ],
                              ),
                            ),
                            //2nd Image of Slider
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              //elevation: 5,
                              child:Row(
                                children: [
                                  Image.asset(AppImage.getPath("card22"),fit: BoxFit.fill,),
                                ],
                              ),
                            ),
                            //3rd Image of Slider
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              //elevation: 5,
                              child:Row(
                                children: [
                                  Image.asset(AppImage.getPath("card33"),fit: BoxFit.fill,),
                                ],
                              ),
                            ),
                          ],
                          //Slider Container properties
                          options: CarouselOptions(
                            height: 160.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 40 / 4,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: SizeConfig.screenWidth*0.73,
                            child: const Text(
                              "After school activities",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20,),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed(NoticeScreen.routeName);
                            },
                            child: Text(
                              "View all",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.fTextColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Card(
                      margin: const EdgeInsets.only(left: 15,right: 10),
                      color: AppColor.appBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 15,right: 10,bottom: 10,top: 15),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Image.asset(AppImage.getPath("chemistry"),height: 90, width: 70,),
                            const SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: SizeConfig.screenWidth * 0.6,
                                  child: Text(
                                    "Coding Bootcamp for Kids",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 16,
                                        color: AppColor.black,
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "By Organizer",
                                  style: TextStyle(
                                      fontFamily: "Jost",
                                      fontSize: 12,
                                      color: AppColor.deepGray,
                                      fontWeight: FontWeight.w200
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "24 March 2021, / 11:00PM",
                                  style: TextStyle(
                                      fontFamily: "Jost",
                                      fontSize: 12,
                                      color: AppColor.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Card(
                      margin: const EdgeInsets.only(left: 15,right: 10),
                      color: AppColor.appBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 15,right: 10,bottom: 10,top: 15),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Image.asset(AppImage.getPath("physic"),height: 90, width: 70,),
                            const SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: SizeConfig.screenWidth * 0.6,
                                  child: Text(
                                    "Coding Bootcamp for Kids",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 16,
                                        color: AppColor.black,
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "By Organizer",
                                  style: TextStyle(
                                      fontFamily: "Jost",
                                      fontSize: 12,
                                      color: AppColor.deepGray,
                                      fontWeight: FontWeight.w200
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "24 March 2021, / 11:00PM",
                                  style: TextStyle(
                                    fontFamily: "Jost",
                                    fontSize: 12,
                                    color: AppColor.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Card(
                      margin: const EdgeInsets.only(left: 15,right: 10),
                      color: AppColor.appBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 15,right: 10,bottom: 10,top: 15),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Image.asset(AppImage.getPath("eng"),height: 90, width: 70,),
                            const SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: SizeConfig.screenWidth * 0.6,
                                  child: Text(
                                    "Coding Bootcamp for Kids",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 16,
                                        color: AppColor.black,
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "By Organizer",
                                  style: TextStyle(
                                      fontFamily: "Jost",
                                      fontSize: 12,
                                      color: AppColor.deepGray,
                                      fontWeight: FontWeight.w200
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "24 March 2021, / 11:00PM",
                                  style: TextStyle(
                                    fontFamily: "Jost",
                                    fontSize: 12,
                                    color: AppColor.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
