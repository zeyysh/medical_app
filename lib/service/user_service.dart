import 'dart:convert';

import 'package:aria_dr/helpers/helper.dart';
import 'package:aria_dr/model/user.dart';
import 'package:aria_dr/repository/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  final UserRepository _userRepository = new UserRepository();
  SharedPreferences _sharedPreferences;

  Future<User> login(username, password) async {
    User user = await _userRepository.login(username, password);
    if (user != null) {
      saveUser(user);
      saveToken(user.token);
      Helper.setToken(user.token);
      Helper.setUser(user);
      Helper.setIsLoggedIn(true);
    }
    return user;
  }

  Future<bool> signOut() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    try {
      _sharedPreferences.remove("user");
      _sharedPreferences.remove("token");
      Helper.setToken("");
      Helper.setUser(null);
      Helper.setIsLoggedIn(false);
      return true;
    } catch (exception) {
      return false;
    }
  }

  Future<User> register() {
    var user;
    return user;
  }

  Future<bool> saveUser(User user) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    try {
      _sharedPreferences.setString("user", json.encode(user.toJson()));
      return true;
    } catch (exception) {
      return false;
    }
  }

  Future<bool> saveToken(String token) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    try {
      _sharedPreferences.setString("token", token);
      return true;
    } catch (exception) {
      return false;
    }
  }

  Future<User> getUserByToken(String token) async {
    User user = await _userRepository.getUserByToken(token);
    return user;
  }

  Future<User> getUserById(int id) async {
    User user = await _userRepository.getUserById(id);
    return user;
  }
}
