import 'package:aria_dr/helpers/custom_colors.dart';
import 'package:aria_dr/screen/login_screen.dart';
import 'package:aria_dr/screen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginSignUpScreen extends StatefulWidget {
  static const String id = "LoginSignUpScreenId";

  @override
  _LoginSignUpScreenState createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  static Image _image = Image.asset(
    'assets/images/MsDr.png',
    fit: BoxFit.contain,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Container(
          color: CustomColors.darkBlueColor,
          child: Column(
            children: <Widget>[
              Container(
                width: 353,
                height: 303,
                margin: EdgeInsets.only(top: 80, right: 10),
                child: Image(image: _image.image),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(SignupScreen.id);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 90),
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color(0xffffffff),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'ثبت نام ',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(LoginScreen.id);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color(0xffffffff),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'ورود',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
