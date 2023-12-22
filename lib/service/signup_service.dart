import 'dart:convert';

import 'package:http/http.dart' as http;

class SignupService {
  Future<http.Response> postData(String name, String job) async {
    String url = 'https://reqres.in/api/users';
    Map data = {"name": name, "job": job};

    http.Response response =
        await http.post(Uri.parse(url), body: jsonEncode(data));

    return response;
  }
}
