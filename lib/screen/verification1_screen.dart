import 'package:aria_dr/screen/verification2_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Verification1Screen extends StatefulWidget {
  static const String id = "Verification1Id";

  @override
  _Verification1ScreenState createState() => _Verification1ScreenState();
}

class _Verification1ScreenState extends State<Verification1Screen> {
  static Image _image1 = Image.asset(
    'assets/images/v1.png',
    fit: BoxFit.contain,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              height: 370,
              color: Colors.indigoAccent,
              child: Align(
                alignment: Alignment.center,
                child: Image(image: _image1.image),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'لطفا شماره موبایل خود را وارد کنید',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              bottom: 30,
              left: 40,
              width: 320,
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(hintText: '09000000000'),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(Verification2Screen.id);
                    },
                    child: Container(
                      margin: EdgeInsets.all(50),
                      padding: EdgeInsets.all(3),
                      width: 190.0,
                      height: 39.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.0),
                        color: const Color(0xff2c64d5),
                      ),
                      child: Text(
                        'ارسال کد',
                        style: TextStyle(
                          fontFamily: 'B Traffic',
                          fontSize: 19,
                          color: const Color(0xffffffff),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
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
