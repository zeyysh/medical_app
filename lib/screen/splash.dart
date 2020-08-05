import 'package:aria_dr/helpers/helper.dart';
import 'package:aria_dr/screen/guide_page1.dart';
import 'package:aria_dr/service/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  static const String id = "SplashId";

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  UserService _userService = UserService();

  bool _loading = true;

  @override
  void initState() {
    _checkUser();
    super.initState();
  }

  _checkUser() async {
    setState(() {
      _loading = true;
    });
    if (await Helper.checkInternetConnection()) {
      String token = await Helper.getLocalToken();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: GuidePage1(),
      image: new Image.asset('assets/images/logo.jpg'),
      photoSize: 200,
    );
  }
}
