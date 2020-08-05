import 'dart:convert';

import 'package:aria_dr/helpers/helper.dart';
import 'package:aria_dr/model/user.dart';
import 'package:aria_dr/repository/base_repository.dart';
import 'package:http/http.dart' as http;

class UserRepository extends BaseRepository {
  Future<String> _getToken() async {
    String token = await Helper.getLocalToken();
    return token;
  }

  Future<User> login(String username, String password) async {
    print('test');
    try {
      var response = await http.post(
        "$baseUrl/login",
        body: {"username": username, "password": password},
      );
      var jsonData = jsonDecode(response.body);
      print(jsonData);
      if (jsonData["data"] != null) {
        //jsonData["user"]["token"] = jsonData["token"];
        // getUserByToken(jsonData["token"]);
        var user = User.fromJson(jsonData["data"]);
        return user;
      } else {
        return null;
      }
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return null;
    }
  }

  Future<User> getUserByToken(String token) async {
    User user;
    try {
      var headers = {
        'content-type': 'application/json',
        'accept': 'application/json',
        'authorization': "Bearer $token",
      };
      var response = await http.get("$baseUrl", headers: headers);
      var jsonData = jsonDecode(response.body);
      user = User.fromJson(jsonData["data"]);
      return user;
    } catch (exception) {
      return user;
    }
  }

  Future<User> getUserById(int id) async {
    User user;
    String token = await Helper.getToken();
    try {
      var headers = {
        'content-type': 'application/json',
        'accept': 'application/json',
        'authorization': "Bearer $token",
      };
      var response = await http.post("$baseUrl", headers: headers);
      var jsonData = jsonDecode(response.body);
      user = User.fromJson(jsonData["data"]);
      return user;
    } catch (exception) {
      return user;
    }
  }
}
