import 'package:flutter/material.dart';

class All_event_page extends StatefulWidget {
  const All_event_page({super.key});

  @override
  State<All_event_page> createState() => _All_event_pageState();
}

class _All_event_pageState extends State<All_event_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Expanded(
        child: Column(
        
          children: [
            SizedBox(height: 50,),
            Container(
              color: Colors.white,
              child:Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(290, 20, 0, 0),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 80,
                    width: 80,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xff7ac6cb), Color(0xFFFF00)]),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'Zainab Bashir',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,fontWeight: FontWeight.bold,
                      ),
                    ),
        
                  ),
        
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      '+88 01327 223282 ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Row(
                      children: [
                        Icon(Icons.email_outlined),
                        SizedBox(width: 10,),
        
                        Text(
                          'Nainab@gmail.com ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 20,),
        
                        Container(
                          height: 30,
                          width: 75,
                          margin: EdgeInsets.fromLTRB(35, 0, 0, 0),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child:Container(
                            margin: EdgeInsets.fromLTRB(13, 4, 2, 2),
                            child: Text('VERYFY', style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold,
                                color: Colors.white),),
                          ),
                        ),
                        SizedBox(height: 30,),
        
                      ],

                    ),
                  )
        
        
        
                ],
              ),
            ),
            SizedBox(height: 8,),
            Container(
              color: Colors.white,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Text(
                      'My Details',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 25,),
                      Icon(Icons.home_filled,
                          color: Colors.grey),
                      SizedBox(width: 30,),
                      Text(
                        'Home Address ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,fontWeight: FontWeight.bold,
                        ),
                      ),
        
        
        
        
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    height: 25,
                    color: Colors.grey,
                    thickness: 1,
                  ),
        
                  Row(
                    children: [
                      SizedBox(width: 25,),
                      Icon(Icons.note_add_rounded, color: Colors.grey,),
                      SizedBox(width: 30,),
                      Text(
                        'Work Address ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,fontWeight: FontWeight.bold,
                        ),
                      ),
        
        
        
        
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    height: 25,
                    color: Colors.grey,
                    thickness: 1,
                  ),
        
                  Row(
                    children: [
                      SizedBox(width: 25,),
                      Icon(Icons.phone_paused_outlined, color: Colors.grey),
                      SizedBox(width: 30,),
                      Text(
                        'Alt Phone Nb ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,fontWeight: FontWeight.bold,
                        ),
                      ),
        
        
        
        
                    ],
                  ),
                  SizedBox(height: 25),
        
                ],
              ),
            ),
            SizedBox(height: 8,),
        
            Container(
              height: 215,
              color: Colors.white,
              child:const Column(
                children: [
        
                  SizedBox(height: 20,),
        
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Icon(Icons.logout,
                          color: Colors.grey),
                      SizedBox(width: 30,),
        
                      Text(
                        'Logout ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        height: 25,
                        color: Colors.grey,
                        thickness: 1,
                      ),
        
        
        
        
                    ],
                  ),
        
        
        
        
        
                ],
              ),
            ),
          ],
        
        ),
      ),
    );
  }
}
