import 'package:flutter/material.dart';
import 'package:mumlly_app/Common/Buttons/default_gradient_button.dart';
import 'package:mumlly_app/Screens/Parent/Payment/payment_history_list.dart';
import 'package:mumlly_app/Screens/Parent/parent_notice_screen.dart';
import 'package:mumlly_app/Screens/Student/notice%20screen.dart';
import 'package:mumlly_app/Utilities/colors.dart';
import 'package:mumlly_app/Utilities/images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mumlly_app/Utilities/size_config.dart';

class ParentHomeScreen extends StatefulWidget {
  static const String routeName = "ParentHomeScreen";
  const ParentHomeScreen({super.key});

  @override
  State<ParentHomeScreen> createState() => _ParentHomeScreenState();
}

class _ParentHomeScreenState extends State<ParentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:  const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50)
                    ),
                    gradient: AppGradient.getColorGradient('default')
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(AppImage.getPath("profile"),),
                            //backgroundImage: NetworkImage(commonProvider.getDriverDetails()!.data!.profileImage!),
                          ),
                          const SizedBox(width: 25.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Md XYZ',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Jost"
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),

            SizedBox(
              height: SizeConfig.screenHeight * 0.75,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                          const Text(
                            "Last Payment",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 200,),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed(PaymentHistoryListScreen.routeName);
                            },
                            child: Text(
                              "View all",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.deepGray,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Card(
                      color: AppColor.appBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: SizeConfig.screenWidth,
                        padding: const EdgeInsets.only(left: 15,right: 10,bottom: 10,top: 15),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Tuition Fee",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 18,
                                        color: AppColor.deepGray,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Text(
                                  "BDT 2500",
                                  style: TextStyle(
                                      fontFamily: "Jost",
                                      fontSize: 17,
                                      color: AppColor.defaultColor3,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Tuition fee for October.",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 13,
                                        color: AppColor.deepGray,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "6 hours ago",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 12,
                                        color: AppColor.gray,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: AppColor.gray,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        "Approved",
                                        style: TextStyle(
                                          fontFamily: "Jost",
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.green,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Card(
                      color: AppColor.appBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: SizeConfig.screenWidth,
                        padding: const EdgeInsets.only(left: 15,right: 10,bottom: 10,top: 15),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Tuition Fee",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 18,
                                        color: AppColor.deepGray,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Text(
                                  "BDT 2500",
                                  style: TextStyle(
                                      fontFamily: "Jost",
                                      fontSize: 17,
                                      color: AppColor.defaultColor3,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Tuition fee for October.",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 13,
                                        color: AppColor.deepGray,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                DefaultButtonWithGradient(
                                  buttonText: "Pay Now",
                                  paddingBottom: 5,
                                  paddingTop: 5,
                                  textSize: 13,
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "6 hours ago",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 12,
                                        color: AppColor.gray,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: AppColor.gray,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        "Pending",
                                        style: TextStyle(
                                          fontFamily: "Jost",
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Card(
                      color: AppColor.appBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: SizeConfig.screenWidth,
                        padding: const EdgeInsets.only(left: 15,right: 10,bottom: 10,top: 15),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Tuition Fee",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 18,
                                        color: AppColor.deepGray,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Text(
                                  "BDT 2500",
                                  style: TextStyle(
                                      fontFamily: "Jost",
                                      fontSize: 17,
                                      color: AppColor.defaultColor3,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Tuition fee for October.",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 13,
                                        color: AppColor.deepGray,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "6 hours ago",
                                    style: TextStyle(
                                        fontFamily: "Jost",
                                        fontSize: 12,
                                        color: AppColor.gray,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: AppColor.gray,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        "Approved",
                                        style: TextStyle(
                                          fontFamily: "Jost",
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.green,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            "Last Notice",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 200,),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed(ParentsNoticeScreen.routeName);
                            },
                            child: Text(
                              "View all",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.deepGray,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Card(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "School Unit Test",
                              style: TextStyle(
                                  fontFamily: "Jost",
                                  fontSize: 18,
                                  color: AppColor.deepGray,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "School unit test start for next Monday to Friday on the student is mandatory to attend the exam. ",
                              style: TextStyle(
                                  fontFamily: "Jost",
                                  fontSize: 14,
                                  color: AppColor.deepGray,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "6 hours ago",
                              style: TextStyle(
                                  fontFamily: "Jost",
                                  fontSize: 12,
                                  color: AppColor.gray,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Card(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "School Leadership and management",
                              style: TextStyle(
                                  fontFamily: "Jost",
                                  fontSize: 18,
                                  color: AppColor.deepGray,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "It allows students to select elective subjects online. The app is easy to use and ideal for all students.It allows students to select elective subjects online. The app is easy to use and ideal for all students",
                              style: TextStyle(
                                  fontFamily: "Jost",
                                  fontSize: 14,
                                  color: AppColor.deepGray,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "6 hours ago",
                              style: TextStyle(
                                  fontFamily: "Jost",
                                  fontSize: 12,
                                  color: AppColor.gray,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Card(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Basic Computer Class",
                              style: TextStyle(
                                  fontFamily: "Jost",
                                  fontSize: 18,
                                  color: AppColor.deepGray,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "School unit test start for next Monday to Friday on the student is mandatory to attend the exam. ",
                              style: TextStyle(
                                  fontFamily: "Jost",
                                  fontSize: 14,
                                  color: AppColor.deepGray,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "6 hours ago",
                              style: TextStyle(
                                  fontFamily: "Jost",
                                  fontSize: 12,
                                  color: AppColor.gray,
                                  fontWeight: FontWeight.bold
                              ),
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
