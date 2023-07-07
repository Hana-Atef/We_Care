import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
String? globalToken;
String baseurl='https://we-care-api.onrender.com/api/v1';
final storage = const FlutterSecureStorage();
Future login_api(String id, String password) async {
  final response = await http.post(
    Uri.parse('$baseurl/auth/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: json.encode(
      <String, String>{"email": id, "password": password},
    ),
  );
  if (response.statusCode == 200) {
    await storage.write(
      key: 'token',
      value: "${json.decode(response.body)['accessToken']}",
    );
    globalToken = await storage.read(key: 'token');

  }

  return response.statusCode;
}