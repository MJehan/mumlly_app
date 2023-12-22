import 'package:flutter/material.dart';
import 'package:new_mumlly_app/Common/bottom_navigation_bar.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/child_managment.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';


class NoticeScreen extends StatefulWidget {
  static const String routeName = "NoticeScreen";
  const NoticeScreen({super.key});

  @override
  State<NoticeScreen> createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
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
                      padding: const EdgeInsets.only(top: 30.0,left: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScrean()),
                            ),
                              child: Icon(Icons.arrow_back,color: AppColor.white,size: 25,),
                          ),
                          const SizedBox(width: 110.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Notice',
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
              height: SizeConfig.screenHeight * 0.78,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListView.builder(
                      itemCount: 10,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.only(left: 10.0,right: 10),
                            child: Card(
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
                          );
                        }
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
