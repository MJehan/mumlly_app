import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:hive/hive.dart';
import 'package:mumlly_app/Provider/provider.dart';
import 'package:mumlly_app/Screens/Parent/Payment/parent_attandance_screen.dart';
import 'package:mumlly_app/Screens/Parent/parent_home_screen.dart';
import 'package:mumlly_app/Screens/Student/attendance_screen.dart';
import 'package:mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:mumlly_app/Screens/home_screen.dart';
import 'package:mumlly_app/Utilities/colors.dart';
import 'package:mumlly_app/Utilities/images.dart';

class ParentBottomNavigationScreen extends StatefulWidget {
  static const String routeName = "ParentBottomNavigationScreen";
  const ParentBottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _ParentBottomNavigationScreenState createState() => _ParentBottomNavigationScreenState();
}

class _ParentBottomNavigationScreenState extends State<ParentBottomNavigationScreen> {

  int currentTab = 0;
  final List<Widget>screens = [
    const ParentHomeScreen(),
    const ParentHomeScreen(),
    const ParentsAttendanceScreen(),
    const ParentHomeScreen(),
    const ParentHomeScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ParentHomeScreen();
  DateTime ? lastPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: AppColor.defaultColor,
        child: Icon(
          Icons.home,
          color: currentTab == 1 ? AppColor.defaultColorLight : AppColor.gray,
        ),
        onPressed: (){
          Navigator.of(context).pushNamed(StudentHomeScreen.routeName);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColor.defaultColor3,
        shape: CircularNotchedRectangle(),
        notchMargin: 1,
        child: SizedBox(
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen =   ParentHomeScreen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chrome_reader_mode_outlined,
                          color: currentTab == 0 ? AppColor.defaultColorLight : AppColor.gray,
                        ),
                        Text(
                          "Subject",
                          style: TextStyle(
                              color: currentTab == 0 ? AppColor.defaultColorLight : AppColor.gray,
                              fontFamily: "Jost",
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = ParentHomeScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_alert_sharp,
                          color: currentTab == 1 ? AppColor.defaultColorLight : AppColor.gray,
                        ),
                        Text(
                          "Notice",
                          style: TextStyle(
                              color: currentTab == 1 ? AppColor.defaultColorLight : AppColor.gray,
                              fontFamily: "Jost",
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 23.0, right: 0),
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: AppColor.gray,
                          fontFamily: "Jost",
                          fontSize: 12
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 35,
                    onPressed: (){
                      setState(() {
                        currentScreen = ParentsAttendanceScreen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chrome_reader_mode,
                          color: currentTab == 2 ? AppColor.defaultColorLight : AppColor.gray,
                        ),
                        Text(
                          "Attendance",
                          style: TextStyle(
                              color: currentTab == 2 ? AppColor.defaultColorLight : AppColor.gray,
                              fontFamily: "Jost",
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 0),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = ParentHomeScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people,
                          color: currentTab == 3 ? AppColor.defaultColorLight : AppColor.gray,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: currentTab == 3 ? AppColor.defaultColorLight : AppColor.gray,
                              fontFamily: "Jost",
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
