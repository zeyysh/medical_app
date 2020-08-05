import 'dart:convert';

import 'package:aria_dr/model/user.dart';
import 'package:aria_dr/service/user_service.dart';
import 'package:connectivity/connectivity.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  static User _user;
  static String _token;
  static bool _isLoggedIn;

  static UserService _userService = UserService();

  static SharedPreferences _sharedPreferences;


  static setToken(String value) {
    _token = value;
  }

  static Future<String> getToken() async {
    if (_token.isNotEmpty) {
      return _token;
    } else {
      String token = await getLocalToken();
      return token;
    }
  }


  static setUser(User value) {
    _user = value;
  }

  static Future<User> getUserByToken() async {
    if (_token.isEmpty) {
      return null;
    } else if (_user != null) {
      return _user;
    } else {
      User user = await _userService.getUserByToken(_token);
      if (user != null) {
        _isLoggedIn = true;
      } else {
        _isLoggedIn = false;
      }
      return user;
    }
  }

  static setIsLoggedIn(bool value) {
    _isLoggedIn = value;
  }

  static bool getIsLoggedIn() {
    return _isLoggedIn;
  }

  static Future<bool> checkInternetConnection() async {
    var connectivityResult = await (new Connectivity().checkConnectivity());
    return connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi;
  }

  static Future<User> getLocalUser() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    try {
      User user = User.fromJson(json.decode(_sharedPreferences.get("user")));
      return user;
    } catch (exception) {
      return null;
    }
  }

  static Future<String> getLocalToken() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    try {
      var token = _sharedPreferences.get("token");
      return token;
    } catch (exception) {
      return "";
    }
  }

}