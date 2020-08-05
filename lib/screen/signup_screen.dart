import 'package:aria_dr/helpers/custom_colors.dart';
import 'package:aria_dr/model/user.dart';
import 'package:aria_dr/screen/main_screen.dart';
import 'package:aria_dr/service/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  static const String id = "SignupScreenId";

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  static Image _image = Image.asset(
    'assets/images/BackgroundSignup.png',
    fit: BoxFit.contain,
  );
  final UserService _userService = UserService();

  bool _loading = false;

  String _userNameError;
  String _passwordError;

  TextEditingController _userNameController;
  TextEditingController _passwordController;

  @override
  void initState() {
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  _login(String username, String password) async {
    setState(() {
      _userNameError = null;
      _passwordError = null;
      _loading = true;
    });
    if (username != '' && password != '') {
      User user = await _userService.login(username, password);
      if (user != null) {
        // Navigator.pushReplacementNamed(context, HomeScreen.id);
      } else {
        setState(() {
          _passwordError = 'رمز عبور را به درستی وارد کنید';
          print(password);
          _loading = false;
        });
      }
    } else {
      if (username == '') {
        setState(() {
          _userNameError = 'نام کاربری را وارد کنید';
          _loading = false;
        });
      }
      if (password == '') {
        setState(() {
          _passwordError = 'رمز عبور را وارد کنید';
          _loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
              fit: BoxFit.cover,
              image: _image.image,
            )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      autovalidate: true,
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: const Color(0xff2c64d5),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff447ae1)),
                            ),
                            margin: EdgeInsets.only(bottom: 20, top: 80),
                            child: Container(
                              height: 65,
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                controller: _userNameController,
                                style: TextStyle(fontSize: 24),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                  labelText: 'نام کاربری',
                                  labelStyle: TextStyle(color: Colors.white),
                                  errorText: _userNameError,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: const Color(0xff2c64d5),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff447ae1)),
                            ),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Container(
                              height: 65,
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                controller: _userNameController,
                                style: TextStyle(fontSize: 24),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                  labelText: 'ایمیل      ',
                                  labelStyle: TextStyle(color: Colors.white),
                                  errorText: _userNameError,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: const Color(0xff2c64d5),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff447ae1)),
                            ),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Container(
                              height: 65,
                              padding: EdgeInsets.all(10),
                              child: TextField(
                                controller: _userNameController,
                                style: TextStyle(fontSize: 24),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                  labelText: 'شماره تلفن',
                                  labelStyle: TextStyle(color: Colors.white),
                                  errorText: _userNameError,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: const Color(0xff2c64d5),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff447ae1)),
                            ),
                            margin: EdgeInsets.all(8),
                            child: Container(
                              height: 65,
                              padding: EdgeInsets.all(20),
                              child: TextField(
                                controller: _passwordController,
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'رمز عبور',
                                  labelStyle: TextStyle(color: Colors.white),
                                  errorText: _passwordError,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              _loading
                                  ? CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          CustomColors.primaryColor),
                                    )
                                  : GestureDetector(
                                      onTap: () {
//                                  _login(
//                                      _userNameController.text.trim(),
//                                      _passwordController.text.trim());
                                        Navigator.of(context)
                                            .pushNamed(MainScreen.id);
                                      },
                                      child: Container(
                                        width: 300,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          color: Colors.white,
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          boxShadow: [
                                            new BoxShadow(
                                                color:
                                                    Color.fromARGB(50, 0, 0, 0),
                                                offset: new Offset(10.0, 10.0),
                                                blurRadius: 12.0,
                                                spreadRadius: 5.0)
                                          ],
                                        ),
                                        child: Center(
                                            child: Text(
                                          'ثبت نام',
                                          style: TextStyle(fontSize: 26),
                                        )),
                                      ),
                                    ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
