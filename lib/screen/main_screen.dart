import 'package:aria_dr/helpers/custom_colors.dart';
import 'package:aria_dr/screen/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainScreen extends StatefulWidget {
  static const String id = "MainScreenId";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static Image _image1 = Image.asset(
    'assets/images/hospital.png',
    fit: BoxFit.contain,
  );
  static Image _image2 = Image.asset(
    'assets/images/archive.png',
    fit: BoxFit.contain,
  );
  static Image _image3 = Image.asset(
    'assets/images/moshaver.png',
    fit: BoxFit.contain,
  );
  static Image _image4 = Image.asset(
    'assets/images/nobat.png',
    fit: BoxFit.contain,
  );
  static Image _image5 = Image.asset(
    'assets/images/pezeshk.png',
    fit: BoxFit.contain,
  );
  static Image _image6 = Image.asset(
    'assets/images/porsesh.png',
    fit: BoxFit.contain,
  );

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

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'تنظیمات',
      style: optionStyle,
    ),
    SearchScreen(),
//    Text(
//      'جستجو',
//      style: optionStyle,
//    ),
    ListView(
      children: <Widget>[
        GestureDetector(
          //onTap: ()=> Navigator.of(context).pushNamed(DoctorListScreen.id),
          child: Container(
            width: 321,
            height: 58,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 1),
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                new BoxShadow(
                    color: Color.fromARGB(50, 0, 0, 0),
                    offset: new Offset(20.0, 10.0),
                    blurRadius: 12.0,
                    spreadRadius: 10.0)
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'جستجوی نام پزشک ، تخصص ، مرکز درمانی و ...',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 30,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: (160 / 130),
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey, width: 1),
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  new BoxShadow(
                      color: Color.fromARGB(50, 0, 0, 0),
                      offset: new Offset(20.0, 10.0),
                      blurRadius: 12.0,
                      spreadRadius: 10.0)
                ],
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'مراکز درمانی',
                          textDirection: TextDirection.rtl,
                          style:
                              TextStyle(fontSize: 18, fontFamily: 'BTraffic'),
                        ),
                      ),
                      Image(
                        image: _image1.image,
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'بیمارستان ، کلینیک ، آزمایشگاه',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 14, fontFamily: 'BTraffic'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey, width: 1),
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  new BoxShadow(
                      color: Color.fromARGB(50, 0, 0, 0),
                      offset: new Offset(20.0, 10.0),
                      blurRadius: 12.0,
                      spreadRadius: 10.0)
                ],
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'سوابق سلامتی',
                          textDirection: TextDirection.rtl,
                          style:
                              TextStyle(fontSize: 18, fontFamily: 'BTraffic'),
                        ),
                      ),
                      Image(
                        image: _image2.image,
                        width: 50,
                        height: 50,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'نوبت های من ، سوابق سلامتی',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 14, fontFamily: 'BTraffic'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey, width: 1),
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  new BoxShadow(
                      color: Color.fromARGB(50, 0, 0, 0),
                      offset: new Offset(20.0, 10.0),
                      blurRadius: 12.0,
                      spreadRadius: 10.0)
                ],
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'مشاوره آنلاین',
                          textDirection: TextDirection.rtl,
                          style:
                              TextStyle(fontSize: 18, fontFamily: 'BTraffic'),
                        ),
                      ),
                      Image(
                        image: _image3.image,
                        width: 50,
                        height: 50,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'دریافت مشاوره تلفنی از بهترین ' + 'پزشکان ایران',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 14, fontFamily: 'BTraffic'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey, width: 1),
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  new BoxShadow(
                      color: Color.fromARGB(50, 0, 0, 0),
                      offset: new Offset(20.0, 10.0),
                      blurRadius: 12.0,
                      spreadRadius: 10.0)
                ],
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'نوبت های من',
                          textDirection: TextDirection.rtl,
                          style:
                              TextStyle(fontSize: 18, fontFamily: 'BTraffic'),
                        ),
                      ),
                      Image(
                        image: _image2.image,
                        width: 50,
                        height: 50,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'سابقه ی نوبت های بیمار',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 14, fontFamily: 'BTraffic'),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              //onTap: ()=> Navigator.of(context).pushNamed(DoctorListScreen.id),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey, width: 1),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    new BoxShadow(
                        color: Color.fromARGB(50, 0, 0, 0),
                        offset: new Offset(20.0, 10.0),
                        blurRadius: 12.0,
                        spreadRadius: 10.0)
                  ],
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'پزشکان',
                            textDirection: TextDirection.rtl,
                            style:
                                TextStyle(fontSize: 18, fontFamily: 'BTraffic'),
                          ),
                        ),
                        Image(
                          image: _image2.image,
                          width: 50,
                          height: 50,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'جستجو،دریافت نوبت و مشاوره',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 14, fontFamily: 'BTraffic'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey, width: 1),
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  new BoxShadow(
                      color: Color.fromARGB(50, 0, 0, 0),
                      offset: new Offset(20.0, 10.0),
                      blurRadius: 12.0,
                      spreadRadius: 10.0)
                ],
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'پرسش و پاسخ',
                          textDirection: TextDirection.rtl,
                          style:
                              TextStyle(fontSize: 18, fontFamily: 'BTraffic'),
                        ),
                      ),
                      Image(
                        image: _image6.image,
                        width: 50,
                        height: 50,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'ارتباط با پزشک و افراد با تجربه ' + 'مشترک',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 14, fontFamily: 'BTraffic'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
    Text(
      'پروفایل',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'main screen',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aria Dr'),
          centerTitle: true,
          backgroundColor: CustomColors.primaryColor,
          automaticallyImplyLeading: true,
        ),
        endDrawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Image(image: _imaged1.image),
                    ),
                    Center(
                        child: Text(
                      'کاربر یک',
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
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      '    کیف پول ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18),
                    )),
                    Image(
                      image: _imaged2.image,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      '    معرفی به دوستان ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18),
                    )),
                    Image(
                      image: _imaged3.image,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      '    امتیاز به آریا دکتر ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18),
                    )),
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      '    پزشک/منشی هستید؟ ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18),
                    )),
                    Image(
                      image: _imaged5.image,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: Colors.black12,
                height: 10,
                thickness: 2,
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      '    پشتیبانی ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18),
                    )),
                    Image(
                      image: _imaged6.image,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      '    خروج از حساب کاربری ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18),
                    )),
                    Image(
                      image: _imaged7.image,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors.blueGrey,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.blueGrey,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('تنظیمات'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('جستجو'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('صفحه اصلی'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('پروفایل'),
            ),
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
