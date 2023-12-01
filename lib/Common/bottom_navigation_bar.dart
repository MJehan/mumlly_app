import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:hive/hive.dart';
import 'package:mumlly_app/Provider/provider.dart';
import 'package:mumlly_app/Screens/Parent/parent_home_screen.dart';
import 'package:mumlly_app/Screens/Profile/profile_screen.dart';
import 'package:mumlly_app/Screens/Student/attendance_screen.dart';
import 'package:mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:mumlly_app/Screens/home_screen.dart';
import 'package:mumlly_app/Utilities/colors.dart';
import 'package:mumlly_app/Utilities/images.dart';

class BottomNavigationScreen extends StatefulWidget {
  static const String routeName = "BottomNavigationScreen";
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int currentTab = 0;
  final List<Widget>screens = [
    const StudentHomeScreen(),
    const AttendanceScreen(),
    const ProfileScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const StudentHomeScreen();
  DateTime ? lastPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PageStorage(
       child: currentScreen,
       bucket: bucket,
     ),
      // floatingActionButton: FloatingActionButton.small(
      //   backgroundColor: AppColor.defaultColor,
      //   child: Icon(
      //     Icons.home,
      //     color: currentTab == 1 ? AppColor.defaultColorLight : AppColor.gray,
      //   ),
      //   onPressed: (){
      //     Navigator.of(context).pushNamed(StudentHomeScreen.routeName);
      //   },
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColor.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 1,
        child: SizedBox(
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const SizedBox(width: 10,),
              MaterialButton(
                minWidth: 40,
                onPressed: (){
                  setState(() {
                    currentScreen =   const StudentHomeScreen();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: currentTab == 0 ? AppColor.fTextColor : AppColor.gray,
                    ),
                    Text(
                      "Homne",
                      style: TextStyle(
                          color: currentTab == 0 ? AppColor.fTextColor : AppColor.gray,
                          fontFamily: "Jost",
                          fontSize: 12
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 35,
                onPressed: (){
                  setState(() {
                    currentScreen = AttendanceScreen();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chrome_reader_mode,
                      color: currentTab == 2 ? AppColor.fTextColor : AppColor.gray,
                    ),
                    Text(
                      "Attendance",
                      style: TextStyle(
                          color: currentTab == 2 ? AppColor.fTextColor : AppColor.gray,
                          fontFamily: "Jost",
                          fontSize: 12
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: (){
                  setState(() {
                    currentScreen = const ProfileScreen();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.people,
                      color: currentTab == 3 ? AppColor.fTextColor : AppColor.gray,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: currentTab == 3 ? AppColor.fTextColor : AppColor.gray,
                          fontFamily: "Jost",
                          fontSize: 12
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10,),
            ],
        ),
        ),
      ),
    );
  }
}
