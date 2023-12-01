import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mumlly_app/Common/bottom_navigation_bar.dart';
import 'package:mumlly_app/Screens/Parent/parent_bottom_navigation_screen.dart';
import 'package:mumlly_app/Screens/Parent/parent_home_screen.dart';
import 'package:mumlly_app/Utilities/colors.dart';
import 'package:mumlly_app/Utilities/images.dart';
import 'package:mumlly_app/Utilities/size_config.dart';

class PaymentHistoryListScreen extends StatefulWidget {
  static const String routeName = "PaymentHistoryListScreen";
  const PaymentHistoryListScreen({super.key});

  @override
  State<PaymentHistoryListScreen> createState() => _PaymentHistoryListScreenState();
}

class _PaymentHistoryListScreenState extends State<PaymentHistoryListScreen> {

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
                            onTap:(){
                              Navigator.of(context).pushNamed(ParentBottomNavigationScreen.routeName);
                            },
                            child: Icon(Icons.arrow_back,color: AppColor.white,size: 25,),
                          ),
                          const SizedBox(width: 90.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Payment History',
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
              height: SizeConfig.screenHeight * 0.79,
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
                          return Card(
                            margin: const EdgeInsets.only(left: 10, right: 10,bottom: 10),
                            elevation: 2,
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: AppColor.defaultColor3.withOpacity(.15),
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Text("${index+1}",style: TextStyle(color: AppColor.defaultColor,fontSize: 14,fontWeight: FontWeight.w600),),
                                      ),
                                      Row(
                                        children: [
                                          //Text("${index+1}.", style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                                          Container(
                                              height: 30,
                                              width: 30,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: AppColor.defaultColor3.withOpacity(.15),
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: Icon(Icons.visibility,size: 17,color: AppColor.defaultColor3,)
                                          ),
                                          const SizedBox(width: 5,),
                                          InkWell(
                                            onTap: (){},
                                            child: Container(
                                                height: 30,
                                                width: 30,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: AppColor.defaultColor3.withOpacity(.15),
                                                    borderRadius: BorderRadius.circular(20)
                                                ),
                                                child: Icon(Icons.credit_card_rounded,size: 17,color: AppColor.defaultColor3,)
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 7,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text("#HS440KM8730}", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                                      Text("23-07-2023", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  const SizedBox(height: 5,),
                                  Row(
                                    children: const [
                                      Icon(Icons.person,size: 21),
                                      SizedBox(width: 7,),
                                      Text("Md Jehan", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  const SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text("Payout Amount", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300),),
                                            SizedBox(height: 3,),
                                            Text("2500 BDT", style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                                            SizedBox(height: 3,),
                                            Text("Cash", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: const [
                                            Text("Receiving Amount", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300),),
                                            SizedBox(height: 3,),
                                            Text("2500 BDT", style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                                            SizedBox(height: 3,),
                                            Text("Cash", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),

                                ],
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
