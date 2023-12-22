import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';
import 'package:new_mumlly_app/Common/bottom_navigation_bar.dart';
import 'package:new_mumlly_app/Screens/App%20Screens/child_managment.dart';
import 'package:new_mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:new_mumlly_app/Utilities/colors.dart';
import 'package:new_mumlly_app/Utilities/size_config.dart';


class AttendanceScreen extends StatefulWidget {
  static const String routeName = "AttendanceScreen";

  const AttendanceScreen({super.key});

  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  final DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();

  CalendarCarousel ? _calendarCarouselNoHeader;

  static final Widget _eventIcon = Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: const Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  final EventList<Event> _markedDateMap =  EventList<Event>(
    events: {
       DateTime(2020, 2, 10): [
         Event(
          date:  DateTime(2020, 2, 14),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
         Event(
          date: new DateTime(2020, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
         Event(
          date: new DateTime(2020, 2, 15),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  @override
  void initState() {
    _markedDateMap.add(
        DateTime(2020, 2, 25),
        Event(
          date: DateTime(2020, 2, 25),
          title: 'Event 5',
          icon: _eventIcon,
        ));

    _markedDateMap.add(
        DateTime(2020, 2, 10),
        Event(
          date: DateTime(2020, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll( DateTime(2019, 2, 11), [
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 2',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const StudentHomeScreen(),
    const AttendanceScreen(),
    const HomeScrean(),
  ];

  @override
  Widget build(BuildContext context) {
    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.deepPurple,
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
//      firstDayOfWeek: 4,
      markedDatesMap: _markedDateMap,
      height: 430.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
      const CircleBorder(side: BorderSide(color: Colors.yellow)),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      showHeader: true,
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),

      todayButtonColor: Colors.yellow,
      selectedDayTextStyle: const TextStyle(
        color: Colors.yellow,
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: const TextStyle(
        fontSize: 16,
        color: Colors.pinkAccent,
      ),
      inactiveDaysTextStyle: const TextStyle(
        color: Colors.tealAccent,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return Scaffold(

      appBar: AppBar(

        toolbarHeight: 60,
        title: const Text(
          '       Choose Date',
        ),

        flexibleSpace: Container(
          decoration: BoxDecoration(

            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25),

            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: <Color>[
                  Colors.white,
                  Colors.purple.shade50,
                  Colors.purple.shade600.withOpacity(0.3)
                ]),
          ),
        ),


      ),
        body: SafeArea(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.screenHeight * 0.71,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 16.0, right: 16),
                        // decoration: BoxDecoration(
                        //   color:Colors.grey
                        // ),
                        child: _calendarCarouselNoHeader,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 108,
                              width: 107,
                              decoration: BoxDecoration(

                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),

                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: <Color>[
                                      Colors.blueAccent,
                                      Colors.grey.shade200.withOpacity(0.9)
                                    ]),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'Total Present',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: AppColor.white,

                                      ),
                                    ),
                                  ),
                                  Text(
                                    '  217',
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        color: AppColor.white,
                                        fontWeight: FontWeight.bold,

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 108,
                              width: 107,
                              decoration: BoxDecoration(

                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),

                                  gradient: AppGradient.getColorGradient('box1')
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'Total Break',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: AppColor.white,

                                      ),
                                    ),
                                  ),
                                  Text(
                                    '  10',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.bold,

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              height: 108,
                              width: 107,
                              decoration: BoxDecoration(

                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),

                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: <Color>[
                                      Colors.red,
                                      Colors.red,
                                      Colors.grey.shade200.withOpacity(0.9)
                                    ]),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'Total Absent',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: AppColor.white,

                                      ),
                                    ),
                                  ),
                                  Text(
                                    '  7',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.bold,

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),


                      Container(
                        height: 24,
                        width: 352,
                        decoration: BoxDecoration(

                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade200,

                        ),
                        child: Row(
                          children: [
                            Container(

                              height: 20,
                              width: 20,
                              color: Colors.blue,

                            ),
                            SizedBox(width: 20,),
                            Text('Days that are marked blue represent present')
                          ],
                        ),
                      ),

                      // SizedBox(
                      //   height: SizeConfig.screenHeight * 0.71,
                      //   child: Column(
                      //     children: [
                      //       Container(
                      //         margin: const EdgeInsets.only(left: 16.0, right: 16),
                      //         // decoration: BoxDecoration(
                      //         //   color:Colors.grey
                      //         // ),
                      //         child: _calendarCarouselNoHeader,
                      //       ),
                      //       Row(
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           Card(
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(20.0),
                      //             ),
                      //             child: Container(
                      //               height: 114,
                      //               width: 107,
                      //               decoration: BoxDecoration(
                      //
                      //                 shape: BoxShape.rectangle,
                      //                 borderRadius: BorderRadius.circular(20),
                      //
                      //                 gradient: LinearGradient(
                      //                     begin: Alignment.topLeft,
                      //                     end: Alignment.bottomRight,
                      //                     colors: <Color>[
                      //                       Colors.blueAccent,
                      //                       Colors.grey.shade200.withOpacity(0.9)
                      //                     ]),
                      //               ),
                      //               child: Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Padding(
                      //                     padding: const EdgeInsets.all(10),
                      //                     child: Text(
                      //                       'Total Present',
                      //                       style: TextStyle(
                      //                         fontSize: 18.0,
                      //                         color: AppColor.white,
                      //
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   Text(
                      //                     '  217',
                      //                     style: TextStyle(
                      //                       fontSize: 22.0,
                      //                       color: AppColor.white,
                      //                       fontWeight: FontWeight.bold,
                      //
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //           Card(
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(20.0),
                      //             ),
                      //             child: Container(
                      //               height: 114,
                      //               width: 107,
                      //               decoration: BoxDecoration(
                      //
                      //                   shape: BoxShape.rectangle,
                      //                   borderRadius: BorderRadius.circular(20),
                      //
                      //                   gradient: AppGradient.getColorGradient('box1')
                      //               ),
                      //               child: Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Padding(
                      //                     padding: const EdgeInsets.all(10),
                      //                     child: Text(
                      //                       'Total Break',
                      //                       style: TextStyle(
                      //                         fontSize: 18.0,
                      //                         color: AppColor.white,
                      //
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   Text(
                      //                     '  10',
                      //                     style: TextStyle(
                      //                       fontSize: 22.0,
                      //                       color: AppColor.white,
                      //                       fontWeight: FontWeight.bold,
                      //
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //           Card(
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(20.0),
                      //             ),
                      //             child: Container(
                      //               height: 114,
                      //               width: 107,
                      //               decoration: BoxDecoration(
                      //
                      //                 shape: BoxShape.rectangle,
                      //                 borderRadius: BorderRadius.circular(20),
                      //
                      //                 gradient: LinearGradient(
                      //                     begin: Alignment.topLeft,
                      //                     end: Alignment.bottomRight,
                      //                     colors: <Color>[
                      //                       Colors.red,
                      //                       Colors.red,
                      //                       Colors.grey.shade200.withOpacity(0.9)
                      //                     ]),
                      //               ),
                      //               child: Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Padding(
                      //                     padding: const EdgeInsets.all(10),
                      //                     child: Text(
                      //                       'Total Absent',
                      //                       style: TextStyle(
                      //                         fontSize: 18.0,
                      //                         color: AppColor.white,
                      //
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   Text(
                      //                     '  7',
                      //                     style: TextStyle(
                      //                       fontSize: 22.0,
                      //                       color: AppColor.white,
                      //                       fontWeight: FontWeight.bold,
                      //
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Container(
                      //   height: 30,
                      //   width: 352,
                      //   decoration: BoxDecoration(
                      //
                      //     shape: BoxShape.rectangle,
                      //     borderRadius: BorderRadius.circular(25),
                      //     color: Colors.grey.shade200,
                      //
                      //   ),
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //         margin: EdgeInsets.only(left: 20),
                      //         height: 25,
                      //         width: 25,
                      //         color: Colors.blue,
                      //
                      //       ),
                      //       SizedBox(width: 20,),
                      //       Text('Days that are marked blue represent present')
                      //     ],
                      //   ),
                      // ),
                      //
                      // SizedBox(
                      //   height: SizeConfig.screenHeight * 0.71,
                      //   child: Column(
                      //     children: [
                      //       Container(
                      //         margin: const EdgeInsets.only(left: 16.0, right: 16),
                      //         // decoration: BoxDecoration(
                      //         //   color:Colors.grey
                      //         // ),
                      //         child: _calendarCarouselNoHeader,
                      //       ),
                      //       Row(
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           Card(
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(20.0),
                      //             ),
                      //             child: Container(
                      //               height: 114,
                      //               width: 107,
                      //               decoration: BoxDecoration(
                      //
                      //                 shape: BoxShape.rectangle,
                      //                 borderRadius: BorderRadius.circular(20),
                      //
                      //                 gradient: LinearGradient(
                      //                     begin: Alignment.topLeft,
                      //                     end: Alignment.bottomRight,
                      //                     colors: <Color>[
                      //                       Colors.blueAccent,
                      //                       Colors.grey.shade200.withOpacity(0.9)
                      //                     ]),
                      //               ),
                      //               child: Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Padding(
                      //                     padding: const EdgeInsets.all(10),
                      //                     child: Text(
                      //                       'Total Present',
                      //                       style: TextStyle(
                      //                         fontSize: 18.0,
                      //                         color: AppColor.white,
                      //
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   Text(
                      //                     '  217',
                      //                     style: TextStyle(
                      //                       fontSize: 22.0,
                      //                       color: AppColor.white,
                      //                       fontWeight: FontWeight.bold,
                      //
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //           Card(
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(20.0),
                      //             ),
                      //             child: Container(
                      //               height: 114,
                      //               width: 107,
                      //               decoration: BoxDecoration(
                      //
                      //                   shape: BoxShape.rectangle,
                      //                   borderRadius: BorderRadius.circular(20),
                      //
                      //                   gradient: AppGradient.getColorGradient('box1')
                      //               ),
                      //               child: Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Padding(
                      //                     padding: const EdgeInsets.all(10),
                      //                     child: Text(
                      //                       'Total Break',
                      //                       style: TextStyle(
                      //                         fontSize: 18.0,
                      //                         color: AppColor.white,
                      //
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   Text(
                      //                     '  10',
                      //                     style: TextStyle(
                      //                       fontSize: 22.0,
                      //                       color: AppColor.white,
                      //                       fontWeight: FontWeight.bold,
                      //
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //           Card(
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(20.0),
                      //             ),
                      //             child: Container(
                      //               height: 114,
                      //               width: 107,
                      //               decoration: BoxDecoration(
                      //
                      //                 shape: BoxShape.rectangle,
                      //                 borderRadius: BorderRadius.circular(20),
                      //
                      //                 gradient: LinearGradient(
                      //                     begin: Alignment.topLeft,
                      //                     end: Alignment.bottomRight,
                      //                     colors: <Color>[
                      //                       Colors.red,
                      //                       Colors.red,
                      //                       Colors.grey.shade200.withOpacity(0.9)
                      //                     ]),
                      //               ),
                      //               child: Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Padding(
                      //                     padding: const EdgeInsets.all(10),
                      //                     child: Text(
                      //                       'Total Absent',
                      //                       style: TextStyle(
                      //                         fontSize: 18.0,
                      //                         color: AppColor.white,
                      //
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   Text(
                      //                     '  7',
                      //                     style: TextStyle(
                      //                       fontSize: 22.0,
                      //                       color: AppColor.white,
                      //                       fontWeight: FontWeight.bold,
                      //
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Container(
                      //   height: 30,
                      //   width: 352,
                      //   decoration: BoxDecoration(
                      //
                      //     shape: BoxShape.rectangle,
                      //     borderRadius: BorderRadius.circular(25),
                      //     color: Colors.grey.shade200,
                      //
                      //   ),
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //         margin: EdgeInsets.only(left: 20),
                      //         height: 25,
                      //         width: 25,
                      //         color: Colors.blue,
                      //
                      //       ),
                      //       SizedBox(width: 20,),
                      //       Text('Days that are marked blue represent present')
                      //     ],
                      //   ),
                      // ),

                    ],
                  ),
                ),
                //
              ],
            ),
          ),
        ),
      bottomNavigationBar: Container(
        height: 60.0, // Set the desired height
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudentHomeScreen()),
              );
            }
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AttendanceScreen()),
              );
            }
            if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScrean()),
              );
            }
          },
          items: [
            BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: '',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),

    );


  }
}