import 'package:aria_dr/screen/loginSignup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Verification2Screen extends StatefulWidget {
  static const String id = "Verification2Id";

  @override
  _Verification2ScreenState createState() => _Verification2ScreenState();
}

class _Verification2ScreenState extends State<Verification2Screen> {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextField field = new TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: '1234',
        hintStyle: TextStyle(
          color: Colors.blueGrey,
        ),
      ),
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30, color: Colors.white),
      maxLength: 4,
    );

    controller.addListener(() {
      if (controller.text.length == field.maxLength) {
        // TextField field = new TextField
        Navigator.of(context).pushNamed(LoginSignUpScreen.id);
      }
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Container(
          color: Colors.indigoAccent,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 150),
                child: Text(
                  'کد تایید',
                  style: TextStyle(
                    fontFamily: 'B Yekan',
                    fontSize: 30,
                    color: const Color(0xffffffff),
                    height: 0.03333333333333333,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 60),
                child: Text(
                  ':لطفا کد ارسالی را وارد کنید',
                  style: TextStyle(
                    fontFamily: 'B Yekan',
                    fontSize: 30,
                    color: const Color(0xffffffff),
                    height: 0.03333333333333333,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 60),
                child: Text(
                  '09000000000',
                  style: TextStyle(
                    fontFamily: 'B Yekan',
                    fontSize: 30,
                    color: const Color(0xffffffff),
                    height: 0.03333333333333333,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 60),
                child: Container(width: 120, child: field),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
