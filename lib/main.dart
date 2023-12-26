import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:hive/hive.dart';
import 'package:new_mumlly_app/Common/bottom_navigation_bar.dart';
import 'package:new_mumlly_app/Screens/Login%20Screens/login_screen.dart';
import 'package:new_mumlly_app/Screens/Login%20Screens/parent_login.dart';
import 'package:new_mumlly_app/Screens/Login%20Screens/select_login_screen.dart';
import 'package:new_mumlly_app/Screens/Login%20Screens/student_login_screen.dart';
import 'package:new_mumlly_app/Screens/Otp%20Screen/otp_screen_parent.dart';
import 'package:new_mumlly_app/Screens/Otp%20Screen/otp_screen_student.dart';
import 'package:new_mumlly_app/Screens/Parent/Payment/parent_attandance_screen.dart';
import 'package:new_mumlly_app/Screens/Parent/Payment/payment_history_list.dart';
import 'package:new_mumlly_app/Screens/Parent/parent_bottom_navigation_screen.dart';
import 'package:new_mumlly_app/Screens/Parent/parent_notice_screen.dart';
import 'package:new_mumlly_app/Screens/Profile/profile_screen.dart';
import 'package:new_mumlly_app/Screens/Start%20screen/get_start_screen.dart';
import 'package:new_mumlly_app/Screens/Start%20screen/splash_screen.dart';
import 'package:new_mumlly_app/Screens/Student/attendance_screen.dart';
import 'package:new_mumlly_app/Screens/Student/notice%20screen.dart';
import 'package:new_mumlly_app/Screens/Student/student_home_screen.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:provider/provider.dart';

import 'Provider/provider.dart';
import 'Provider/theme_provider.dart';
import 'Screens/Parent/parent_home_screen.dart';
import 'Screens/home_screen.dart';
import 'Utilities/size_config.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Locales.init(['en','bn']);

  final appDocumentDirectory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  // Hive.openBox('loginData');
  // Hive.openBox('languageData');
  // Hive.openBox('lookUpData');


  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeProvider(isLightTheme: true),),
          ChangeNotifierProvider(create: (_)=>CommonProvider()),
        ],
        child: const AppStart(),
      )
  );
}

class AppStart extends StatelessWidget {
  const AppStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MyApp(
      themeProvider: themeProvider,
    );
  }
}

class MyApp extends StatefulWidget {
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  final ThemeProvider themeProvider;
  const MyApp({Key? key, required this.themeProvider}) : super(key: key);

  @override
  void initState() {

  }
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          return OrientationBuilder(
              builder: (context,orientation){
                SizeConfig.init(constraints,orientation);

                return LocaleBuilder(
                  builder: (locale) => MaterialApp(
                    localizationsDelegates: Locales.delegates,
                    supportedLocales: Locales.supportedLocales,
                    locale: locale,
                    navigatorKey: MyApp.navKey,
                    debugShowCheckedModeBanner: false,
                    initialRoute: SplashScreen.routeName,
                    routes: {
                      SplashScreen.routeName : (context)=> SplashScreen(),
                      GetStartScreen.routeName : (context)=> const GetStartScreen(),
                      LoginScreen.routeName : (context)=> const LoginScreen(),
                      ProfileScreen.routeName : (context)=> const ProfileScreen(),


                      SelectLoginScreen.routeName : (context)=> const SelectLoginScreen(),
                      SendOtpScreen.routeName : (context)=> SendOtpScreen(),
                      StudentLoginScreen.routeName : (context)=> const StudentLoginScreen(),
                      ParentLoginScreen.routeName : (context)=> const ParentLoginScreen(),
                      BottomNavigationScreen.routeName : (context)=>const BottomNavigationScreen(),
                      StudentHomeScreen.routeName : (context)=> const StudentHomeScreen(),
                      HomeScreen.routeName : (context)=> const HomeScreen(),
                      NoticeScreen.routeName : (context)=> const NoticeScreen(),
                      AttendanceScreen.routeName : (context)=> const AttendanceScreen(),
                      ParentHomeScreen.routeName : (context)=> const ParentHomeScreen(),
                      ParentSendOtpScreen.routeName : (context)=> ParentSendOtpScreen(),
                      ParentBottomNavigationScreen.routeName : (context)=> ParentBottomNavigationScreen(),
                      PaymentHistoryListScreen.routeName : (context)=> PaymentHistoryListScreen(),
                      ParentsAttendanceScreen.routeName : (context)=> ParentsAttendanceScreen(),
                      ParentsNoticeScreen.routeName : (context)=> ParentsNoticeScreen(),
                    },
                  ),
                );
              }
          );
        }
    );
  }
}

