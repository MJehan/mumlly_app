import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/billing.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/profile_events.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/images.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';
import 'package:new_mumlly_app/Utilities/utility.dart';




class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: SizeConfig.screenHeight*0.18,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius:  BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(AppImage.getPath("profile")),
                          ),
                          const SizedBox(width: 15.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Zainab Bashir",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Jost"
                                ),
                              ),
                              InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => All_event_page()),
                                ),
                                child: Text(
                                  "View Profile",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                    color: AppColor.fTextColor,
                                  ),
                                  //getCommonProvider.getDriverDetails()!.data!.phoneCode! + getCommonProvider.getDriverDetails()!.data!.phoneNumber!
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ListTile(
              title:  const Text(
                'Billing',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 16),
              ),
              leading: Icon(
                Icons.home_sharp,
                color: Colors.black54,
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => billing()),
              ),
            ),
            ListTile(
              title: const Text(
                'Promotions',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 16),
              ),
              leading: Icon(
                Icons.note_outlined,
                color: Colors.black54,
              ),
              onTap: () {
                Utility.pop();
              },
            ),
            ListTile(
              title: const Text(
                'Support',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 16),
              ),
              leading: Icon(
                Icons.broken_image_outlined,
                color:Colors.black54,
              ),
              onTap: () {
                Utility.pop();
              },
            ),
            ListTile(
              title: const Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 16),
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.black54,
              ),
              onTap: () {
                Utility.pop();
              },
            ),
            SizedBox(height: 240,),

            ListTile(
              title: const Text(
                'Sign Out',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 16),
              ),
              leading: Icon(
                Icons.logout,
                color: Colors.black54,
              ),
              onTap: () {
                Utility.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}



