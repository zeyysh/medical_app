import 'package:aria_dr/screen/doctors_list_screen.dart';
import 'package:aria_dr/screen/guide_page1.dart';
import 'package:aria_dr/screen/guide_page2.dart';
import 'package:aria_dr/screen/guide_page3.dart';
import 'package:aria_dr/screen/guide_page4.dart';
import 'package:aria_dr/screen/loginSignup_screen.dart';
import 'package:aria_dr/screen/login_screen.dart';
import 'package:aria_dr/screen/main_screen.dart';
import 'package:aria_dr/screen/signup_screen.dart';
import 'package:aria_dr/screen/splash.dart';
import 'package:aria_dr/screen/verification1_screen.dart';
import 'package:aria_dr/screen/verification2_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AriaDr',
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'BTraffic',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.id,
      routes: {
        Splash.id: (context) => Splash(),
        GuidePage1.id: (context) => GuidePage1(),
        GuidePage2.id: (context) => GuidePage2(),
        GuidePage3.id: (context) => GuidePage3(),
        GuidePage4.id: (context) => GuidePage4(),
        Verification1Screen.id: (context) => Verification1Screen(),
        Verification2Screen.id: (context) => Verification2Screen(),
        LoginSignUpScreen.id: (context) => LoginSignUpScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        MainScreen.id: (context) => MainScreen(),
        //DrawerScreen.id: (context) => DrawerScreen(),
        DoctorListScreen.id: (context) => DoctorListScreen(),
      },
    );
  }
}
