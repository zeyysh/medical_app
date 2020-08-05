import 'package:flutter/material.dart';

Image _imaged1 = Image.asset(
  'assets/images/d1.png',
  fit: BoxFit.contain,
);
Image _imaged2 = Image.asset(
  'assets/images/d2.png',
  fit: BoxFit.contain,
);
Image _imaged3 = Image.asset(
  'assets/images/d3.png',
  fit: BoxFit.contain,
);
Image _imaged4 = Image.asset(
  'assets/images/nobat.png',
  fit: BoxFit.contain,
);
Image _imaged5 = Image.asset(
  'assets/images/d5.png',
  fit: BoxFit.contain,
);
Image _imaged6 = Image.asset(
  'assets/images/d6.png',
  fit: BoxFit.contain,
);
Image _imaged7 = Image.asset(
  'assets/images/d7.png',
  fit: BoxFit.contain,
);

Widget DrawerScreen = Drawer(
  child: ListView(
    padding: EdgeInsets.all(8),
    children: <Widget>[
      DrawerHeader(
        child: Expanded(
            child: Container(
          color: Colors.indigo,
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image(image: _imaged1.image),
              ),
              Center(
                  child: Text(
                'کازبر یک',
                style: TextStyle(
                  fontSize: 19,
                ),
              )),
              Center(
                  child: Text(
                'اعتبار : 0 تومان',
                style: TextStyle(fontSize: 19),
              )),
            ],
          ),
        )),
      ),
      ListTile(
        title: Row(
          children: <Widget>[
            Expanded(child: Text('کیف پول ')),
            Image(image: _imaged2.image),
          ],
        ),
        onTap: () {},
      ),
    ],
  ),
);
