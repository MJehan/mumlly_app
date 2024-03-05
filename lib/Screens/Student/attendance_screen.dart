import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';
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
      border: Border.all(color: Colors.blue, width: 2.0),
    ),
    child: const Icon(
      Icons.person,
      color: Colors.black,
    ),
  );


  final EventList<Event> _markedDateMap =  EventList<Event>(
    events: {
      DateTime(2024, 1, 10): [
        Event(
          date:  DateTime(2024, 1, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: InkWell(
            onTap: (){
              print("test");
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              color: Colors.red,
              height: 5.0,
              width: 5.0,
            ),
          ),
        ),
      ],
      DateTime(2024, 1, 11): [
        Event(
          date:  DateTime(2024, 1, 14),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
      ],
      DateTime(2024, 1, 2): [
        Event(
          date:  DateTime(2024, 1, 14),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.yellow,
            height: 5.0,
            width: 5.0,
          ),
        ),
      ],
      DateTime(2024, 1, 5): [
        Event(
          date:  DateTime(2024, 1, 14),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.yellow,
            height: 5.0,
            width: 5.0,
          ),
        ),
      ],
    },
  );
  final EventList<Event> _markedDateMap1 =  EventList<Event>(
    events: {
      DateTime(2024, 1, 2): [
        Event(
          date:  DateTime(2020, 1, 3),
          title: 'Event 1',
          icon: _eventIcon,
          dot: InkWell(
            onTap: (){
              print("test");
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              color: Colors.yellow,
              height: 5.0,
              width: 5.0,
            ),
          ),
        ),
      ],
      DateTime(2024, 1, 5): [
        Event(
          date:  DateTime(2024, 1, 14),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.yellow,
            height: 5.0,
            width: 5.0,
          ),
        ),
      ],
    },
  );

  @override
  void initState() {

    _markedDateMap.add(
        DateTime(2024, 1, 9),
        Event(
          date: DateTime(2020, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));
    _markedDateMap.add(
        DateTime(2024, 1, 3),
        Event(
          date: DateTime(2020, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));
    _markedDateMap.add(
        DateTime(2024, 1, 4),
        Event(
          date: DateTime(2020, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));
    _markedDateMap.add(
        DateTime(2024, 1, 8),
        Event(
          date: DateTime(2020, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));
    _markedDateMap.add(
        DateTime(2024, 1, 12),
        Event(
          date: DateTime(2020, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));
    _markedDateMap.add(
        DateTime(2024, 1, 15),
        Event(
          date: DateTime(2020, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));
    _markedDateMap.add(
        DateTime(2024, 1, 16),
        Event(
          date: DateTime(2020, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll(
        DateTime(2024, 1, 1), [
      Event(
        date: DateTime(2019, 2, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.deepPurple,
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => _showDialog(context)
        );
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
      // markedDateCustomShapeBorder:
      // const CircleBorder(side: BorderSide(color: Colors.yellow)),
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
          print('long pressed date $date');
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text(
          '                  Attendance',
          style: TextStyle(
             fontFamily: "Lato"
        ),
        ),

        flexibleSpace: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(0),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  AppColor.defaultButtonColor.withOpacity(0.6),
                  //AppColor.defaultColor1,
                  AppColor.white.withOpacity(0.1)
                ]
            ),
          ),
        ),


      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 16),
                  child: _calendarCarouselNoHeader,
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 16,),

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    height: SizeConfig.screenHeight*0.18,
                    width: SizeConfig.screenWidth * 0.28,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Colors.blue,
                            Colors.blue,
                            Colors.blue,
                            Colors.grey.withOpacity(0.3)
                          ]),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Present',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: AppColor.white,

                                ),
                              ),
                              SizedBox(height: 15,),
                              Text(
                                '217',
                                style: TextStyle(
                                  fontSize: 26.0,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),

                        ),

                      ],
                    ),
                  ),
                ),
                Spacer(),

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    height: SizeConfig.screenHeight*0.18,
                    width: SizeConfig.screenWidth * 0.28,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Colors.yellow,
                            Colors.yellow,
                            Colors.yellow,
                            Colors.grey.withOpacity(0.3)
                          ]),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total\nBreak',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: AppColor.white,

                                ),
                              ),
                              SizedBox(height: 15,),
                              Text(
                                '10',
                                style: TextStyle(
                                  fontSize: 26.0,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),

                        ),

                      ],
                    ),
                  ),
                ),
                Spacer(),

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    height: SizeConfig.screenHeight*0.18,
                    width: SizeConfig.screenWidth * 0.28,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Colors.red,
                            Colors.red,
                            Colors.red,
                            Colors.grey.withOpacity(0.3)
                          ]),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Absent',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: AppColor.white,

                                ),
                              ),
                              SizedBox(height: 15,),
                              Text(
                                '7',
                                style: TextStyle(
                                  fontSize: 26.0,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                            ],
                          ),

                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16,),
              ],
            ),
            //
          ],
        ),
      ),
    );
  }
}
void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Days Remark',
            style: TextStyle(
                fontSize: 20.0,
                color: AppColor.black,
                fontWeight: FontWeight.w500,
                fontFamily: "Lato"
            ),
          ),
        ),
        content: SizedBox(
          height: 130,
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue
                        ),
                        ),
                    SizedBox(width: 10,),
                    Text(
                      'Present',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: AppColor.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Lato"
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.yellow
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Half Day Present ',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: AppColor.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Lato"
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Absent',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: AppColor.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Lato"
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Center(

                child: Container(
                    height: 35,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColor.defaultButtonColor
                    ),
                    child: Center(child: Text(
                      'ok',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: AppColor.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Lato"
                      ),
                    ),
                    ))
            ),
          ),
        ],
      );
    },
  );
}
