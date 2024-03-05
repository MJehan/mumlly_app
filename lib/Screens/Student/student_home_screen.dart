import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/side_bar.dart';
import 'package:new_mumlly_app/Provider/theme_provider.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/AlleventPage.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/add_new_child.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/all_children.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/eventDetails.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/event_details2.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/parents_profile.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/student_profile_screen.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/tom_screen.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/zainab_screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'package:provider/provider.dart';



class StudentHomeScreen extends StatefulWidget {
  static const String routeName = "StudentHomeScreen";
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  get isLoadingForCommonData => null;
  late ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of<ThemeProvider>(context);
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
                            icon: const Icon(
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
                                        MaterialPageRoute(builder: (context) => ParentsProfileScreen()),
                                      ),
                                      child: Text(
                                        "Zainab Bashir",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: AppColor.textcolor,
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
                          const Column(
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
              height: SizeConfig.screenHeight * 0.80,
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
                              MaterialPageRoute(builder: (context) => AllChildrenScreen()),
                            ),

                            child: Text(
                              "View all",
                              style: TextStyle(
                                fontSize: 18,
                                  color: AppColor.textcolor,
                                  fontFamily: "Lato"
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => StudentProfileHomeScreen(name: "Zainab",)),
                              ),
                              child: Container(

                                height: SizeConfig.screenHeight * 0.32,
                                width: SizeConfig.screenWidth * 0.51,
                                padding:EdgeInsets.all(8),

                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: Offset(0, 3), // changes the shadow position
                                    ),
                                  ],

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
                                          const Text(
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

                                              color: AppColor.textcolor,),
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
                                MaterialPageRoute(builder: (context) => StudentProfileHomeScreen(name: "Tom")),
                              ),
                              child: Container(

                                height: SizeConfig.screenHeight * 0.32,
                                width: SizeConfig.screenWidth * 0.51,
                                padding:EdgeInsets.all(8),

                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: Offset(0, 3), // changes the shadow position
                                    ),
                                  ],

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
                                          const Text(
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

                                              color: AppColor.textcolor,),
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
                                height: SizeConfig.screenHeight * 0.32,
                                width: SizeConfig.screenWidth * 0.54,
                                padding:EdgeInsets.only(left: 10),

                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: Offset(0, 3), // changes the shadow position
                                    ),
                                  ],
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
                                              color: AppColor.textcolor,),
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

                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'After School Activities',
                            style: TextStyle(fontSize:18,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Lato",
                                color: Colors.black),
                          ),
                          Spacer(),

                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => event_page()),
                            ),
                            child: Text(
                              'View All',
                              style: TextStyle(fontSize:18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Lato",
                                color: AppColor.textcolor,),
                            ),
                          ),
                        ],

                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:[
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => event_details()),
                            ),

                            child: Container(
                                height: SizeConfig.screenHeight * 0.14,
                                width: SizeConfig.screenWidth * 0.92,
                                margin:EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration:
                                BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10),),
                                child: Row(
                                  children: [
                                    Container(
                                      height: SizeConfig.screenHeight * 0.13,
                                      width: SizeConfig.screenWidth * 0.2,
                                      child: Image.asset(
                                        AppImage.getPath("coding_pic"),
                                        fit: BoxFit.fill,),
                                      decoration:
                                      BoxDecoration(color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),),


                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: const Column(
                                        children: [
                                          SizedBox(height: 5,),
                                          Text('Coding bootcamp for kids ', style: TextStyle(
                                              fontSize: 17,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.black),),
                                          SizedBox(height: 12,),

                                          Text('By Organiser ', style: TextStyle(
                                              fontSize: 15,fontFamily: "Lato",
                                              color: Colors.grey),),

                                          SizedBox(height: 5),

                                          Text('24 March 21 /11.00 PM', style: TextStyle(
                                              fontSize: 15,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.grey
                                          ),),


                                        ],


                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EventDetails2()),
                            ),
                            child: Container(
                                height: SizeConfig.screenHeight * 0.14,
                                width: SizeConfig.screenWidth * 0.92,
                                margin:EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration:
                                BoxDecoration(color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10),),
                                child: Row(
                                  children: [
                                    Container(
                                      height: SizeConfig.screenHeight * 0.13,
                                      width: SizeConfig.screenWidth * 0.2,
                                      child: Image.asset(
                                        AppImage.getPath("tenis_pic"),
                                        fit: BoxFit.fill,),

                                      decoration:
                                      BoxDecoration(color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),),


                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: const Column(
                                        children: [
                                          SizedBox(height: 5,),
                                          Text('Table tenis For grade 1 ', style: TextStyle(
                                              fontSize: 17,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.black),),
                                          SizedBox(height: 12,),

                                          Text('By Organiser ', style: TextStyle(
                                              fontSize: 15,fontFamily: "Lato",
                                              color: Colors.grey),),

                                          SizedBox(height: 5),

                                          Text('24 March 21 /11.00 PM', style: TextStyle(
                                              fontSize: 15,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.grey
                                          ),),


                                        ],


                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => event_details()),
                            ),

                            child: Container(
                                height: SizeConfig.screenHeight * 0.14,
                                width: SizeConfig.screenWidth * 0.92,
                                margin:EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration:
                                BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(10),),
                                child: Row(
                                  children: [
                                    Container(
                                      height: SizeConfig.screenHeight * 0.13,
                                      width: SizeConfig.screenWidth * 0.2,
                                      child: Image.asset(
                                        AppImage.getPath("coding_pic"),
                                        fit: BoxFit.fill,),
                                      decoration:
                                      BoxDecoration(color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),),


                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: const Column(
                                        children: [
                                          SizedBox(height: 5,),
                                          Text('Coding bootcamp for kids ', style: TextStyle(
                                              fontSize: 17,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.black),),
                                          SizedBox(height: 12,),

                                          Text('By Organiser ', style: TextStyle(
                                              fontSize: 15,fontFamily: "Lato",
                                              color: Colors.grey),),

                                          SizedBox(height: 5),

                                          Text('24 March 21 /11.00 PM', style: TextStyle(
                                              fontSize: 15,fontWeight: FontWeight.bold,
                                              fontFamily: "Lato",
                                              color: Colors.grey
                                          ),),


                                        ],


                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),

                        ]
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
