import 'package:aria_dr/helpers/custom_colors.dart';
import 'package:aria_dr/screen/main_screen.dart';
import 'package:aria_dr/screen/verification1_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GuidePage4 extends StatefulWidget {
  static const String id = "guidePage4Id";

  @override
  _GuidePage4State createState() => _GuidePage4State();
}

class _GuidePage4State extends State<GuidePage4> {
  Image _image = Image.asset(
    'assets/images/guide4.jpg',
    fit: BoxFit.contain,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guide Page',
      home: Scaffold(
        backgroundColor: CustomColors.primaryColor,
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 95, left: 74, right: 74),
              padding: EdgeInsets.all(2),
              height: 181,
              width: 207.08,
              decoration: BoxDecoration(
                border: Border.all(color: CustomColors.borderColor, width: 3),
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: _image.image, alignment: Alignment.center),
              ),
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 69, left: 60, right: 60),
                child: Column(
                  children: <Widget>[
                    Text(
                      'امکان بارگذاری آگهی شغلی',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'دنبال کار میگردی؟؟؟' + ' ......یه سر به دکتر مکتر بزن',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CustomColors.whiteColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
            Container(
              width: 311,
              height: 46,
              margin: EdgeInsets.only(top: 170),
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                      color: Color.fromARGB(50, 0, 0, 0),
                      offset: new Offset(20.0, 10.0),
                      blurRadius: 12.0,
                      spreadRadius: 10.0)
                ],
              ),
              child: FlatButton(
                onPressed: () =>
                    Navigator.pushNamed(context, Verification1Screen.id),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'بعدی',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(),
                  ),
                  FlatButton(
                    textColor: Color.fromARGB(1, 146, 189, 223),
                    child: Text(
                      'گذشتن',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(MainScreen.id);
                    },
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
