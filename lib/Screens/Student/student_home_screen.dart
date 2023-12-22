import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/side_bar.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/AlleventPage.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/add_new_child.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/child_managment.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/eventDetails.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/profile_events.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/transfer.dart';
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
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: (){
                              _globalKey.currentState?.openDrawer();
                            },
                            icon: Icon(
                              Icons.menu_rounded,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 20,),
                          SizedBox(
                            width: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Morning!',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: AppColor.black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Lato"
                                  ),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => All_event_page()),
                                      ),
                                      child: Text(
                                        "Zainab Bashir",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: AppColor.fTextColor,
                                            fontFamily: "Lato"

                                        ),
                                        //getCommonProvider.getDriverDetails()!.data!.phoneCode! + getCommonProvider.getDriverDetails()!.data!.phoneNumber!
                                      ),
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
            const SizedBox(height: 10,),

            SizedBox(
              height: SizeConfig.screenHeight * 0.72,
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
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                  fontFamily: "Lato"
                              ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScrean()),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Transfer_child()),
                              ),

                              child: Text(
                                "View all",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColor.fTextColor,
                                    fontFamily: "Lato"
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => All_event_page()),
                              ),
                              child: Container(
                                height: SizeConfig.screenHeight * 0.30,
                                width: SizeConfig.screenWidth * 0.51,
                                padding:EdgeInsets.only(left: 5),

                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,

                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Container(
                                      height: 170,
                                      width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,

                                          borderRadius: BorderRadius.circular(15),
                                        ),

                                      child:Image.asset(
                                        AppImage.getPath("main_pic"),
                                        fit: BoxFit.fill,)
                                    ),

                                    Container(
                                      padding: EdgeInsets.all(7),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '  Zainab',
                                            style: TextStyle(fontSize:20,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Lato",
                                                color: Colors.black),
                                          ),
                                          Text(
                                            '  School Name',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Lato",
                                                fontWeight: FontWeight.w500,

                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                    )

                                  ],
                                ),

                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => All_event_page()),
                              ),
                              child: Container(
                                height: SizeConfig.screenHeight * 0.30,
                                width: SizeConfig.screenWidth * 0.51,
                                padding:EdgeInsets.only(left: 5),

                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,

                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [

                                    Container(
                                        height: 170,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,

                                          borderRadius: BorderRadius.circular(15),
                                        ),

                                        child:Image.asset(
                                          AppImage.getPath("main_pic"),
                                          fit: BoxFit.fill,)
                                    ),

                                    Container(
                                      padding: EdgeInsets.all(7),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '  Tom',
                                            style: TextStyle(fontSize:20,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Lato",
                                                color: Colors.black),
                                          ),
                                          Text(
                                            '  School Name',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Lato",
                                                fontWeight: FontWeight.w500,

                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                    )

                                  ],
                                ),

                              ),
                            ),


                            InkWell(
                                onTap: () => Navigator.push(
                                            context,
                                     MaterialPageRoute(builder: (context) => add_new_child()),
                                 ),

                              child: Container(
                                height: SizeConfig.screenHeight * 0.30,
                                width: SizeConfig.screenWidth * 0.54,
                                padding:EdgeInsets.only(left: 10),

                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,

                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [

                                    Center(
                                      child: Container(
                                        margin: EdgeInsets.only(top: 80),
                                          height: 49,
                                          width: 49,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                          ),

                                          child:Image.asset(
                                            AppImage.getPath("plus_icon"),
                                            fit: BoxFit.fill,)
                                      ),
                                    ),
                                    SizedBox(height: 60,),

                                    Container(
                                      padding: EdgeInsets.all(7),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Add New Child',
                                            style: TextStyle(fontSize:24,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Lato",
                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                    )

                                  ],
                                ),

                              ),
                            ),

                          ],
                        )
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
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Lato",
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => event_page()),
                            ),
                            child: Text(
                              "View all",
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColor.fTextColor,
                                fontFamily: "Lato",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => event_details()),
                      ),
                      child: Card(
                        elevation: 5,
                        margin: const EdgeInsets.only(left: 15,right: 15),
                        color: AppColor.appBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10,right: 0,bottom: 5,top: 10),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                  child: Image.asset(
                                AppImage.getPath("bb"),
                                  fit: BoxFit.fill)
                              ),
                              const SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 0.6,
                                    child: Text(
                                      "Coding Bootcamp for Kids",
                                      style: TextStyle(

                                          fontSize: 16,
                                          color: AppColor.black,
                                          fontWeight: FontWeight.w500,
                                        fontFamily: "Lato",
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "By Organizer",
                                    style: TextStyle(

                                        fontSize: 12,
                                        color: AppColor.deepGray,
                                        fontWeight: FontWeight.w200,
                                      fontFamily: "Lato",
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "24 March 2021, / 11:00PM",
                                    style: TextStyle(

                                        fontSize: 14,
                                        color: AppColor.black,
                                      fontFamily: "Lato",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => event_details()),
                      ),
                      child: Card(
                        elevation: 5,
                        margin: const EdgeInsets.only(left: 15,right: 15),
                        color: AppColor.appBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10,right: 0,bottom: 5,top: 10),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 95,
                                  padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                  child: Image.asset(
                                      AppImage.getPath("physics"),
                                      fit: BoxFit.fill)
                              ),
                              const SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 0.6,
                                    child: Text(
                                      "Physics Conpetition for Kids",
                                      style: TextStyle(

                                        fontSize: 16,
                                        color: AppColor.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Lato",
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "By Organizer",
                                    style: TextStyle(

                                      fontSize: 12,
                                      color: AppColor.deepGray,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Lato",
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "24 March 2021, / 11:00PM",
                                    style: TextStyle(

                                      fontSize: 14,
                                      color: AppColor.black,
                                      fontFamily: "Lato",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => event_details()),
                      ),
                      child: Card(
                        elevation: 5,
                        margin: const EdgeInsets.only(left: 15,right: 15),
                        color: AppColor.appBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10,right: 0,bottom: 5,top: 10),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 95,
                                  padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                  child: Image.asset(
                                      AppImage.getPath("swiming"),
                                      fit: BoxFit.fill)
                              ),
                              const SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 0.6,
                                    child: Text(
                                      "Swimming Practice for Kids",
                                      style: TextStyle(

                                        fontSize: 16,
                                        color: AppColor.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Lato",
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "By Organizer",
                                    style: TextStyle(

                                      fontSize: 12,
                                      color: AppColor.deepGray,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Lato",
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "24 March 2021, / 11:00PM",
                                    style: TextStyle(

                                      fontSize: 14,
                                      color: AppColor.black,
                                      fontFamily: "Lato",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),

                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => event_details()),
                      ),
                      child: Card(
                        elevation: 5,
                        margin: const EdgeInsets.only(left: 15,right: 15),
                        color: AppColor.appBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10,right: 0,bottom: 5,top: 10),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                  child: Image.asset(
                                      AppImage.getPath("bb"),
                                      fit: BoxFit.fill)
                              ),
                              const SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 0.6,
                                    child: Text(
                                      "Coding Bootcamp for Kids",
                                      style: TextStyle(

                                        fontSize: 16,
                                        color: AppColor.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Lato",
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "By Organizer",
                                    style: TextStyle(

                                      fontSize: 12,
                                      color: AppColor.deepGray,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Lato",
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "24 March 2021, / 11:00PM",
                                    style: TextStyle(

                                      fontSize: 14,
                                      color: AppColor.black,
                                      fontFamily: "Lato",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => event_details()),
                      ),
                      child: Card(
                        elevation: 5,
                        margin: const EdgeInsets.only(left: 15,right: 15),
                        color: AppColor.appBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(left: 10,right: 0,bottom: 5,top: 10),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(15),
                                  ),

                                  child: Image.asset(
                                      AppImage.getPath("bb"),
                                      fit: BoxFit.fill)
                              ),
                              const SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: SizeConfig.screenWidth * 0.6,
                                    child: Text(
                                      "Coding Bootcamp for Kids",
                                      style: TextStyle(

                                        fontSize: 16,
                                        color: AppColor.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Lato",
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "By Organizer",
                                    style: TextStyle(

                                      fontSize: 12,
                                      color: AppColor.deepGray,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Lato",
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "24 March 2021, / 11:00PM",
                                    style: TextStyle(

                                      fontSize: 14,
                                      color: AppColor.black,
                                      fontFamily: "Lato",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
