import 'dart:convert';
import '../model/user_model.dart';
import 'package:flutter_lab1/varibles.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<void> login(String username, String password) async {
    print(apiURL);

    final Response = await http.post(Uri.parse("$apiURL/api/auth/login"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"user_name": username, "password": password}));
    print(Response.statusCode);
  } 
}
