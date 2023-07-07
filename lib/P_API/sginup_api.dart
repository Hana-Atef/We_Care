import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

String? globalToken;
String baseurl='https://we-care-api.onrender.com/api/v1';
final storage = const FlutterSecureStorage();
Future signup_api(String username ,String email, String password,) async {
  final response = await http.post(
    Uri.parse('$baseurl/auth/sign-up'),
    headers: {
      
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: json.encode(
      {'name': username,"email": email, "password": password, },
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
//
  // // Function to handle form submission
  // Future signup_api(String username, String email, String password) async {
  //   // Create the signup request payload
  //   final Map<String, dynamic> signupData = {
  //     'username': username,
  //     'email': email,
  //     'password': password,
  //   };
  //
  //   // Make the signup API request
  //   final response = await http.post(
  //     Uri.parse('$baseurl/auth/sign-up'),
  //     body: signupData,
  //   );
  //
  //   // Handle the API response
  //   if (response.statusCode == 200) {
  //     // Signup successful
  //     final responseData = json.decode(response.body);
  //     final token = responseData['token'];
  //     // Save the token to local storage or global state for future authenticated requests
  //     globalToken = await storage.read(key: 'token');
  //   } else {
  //     // Signup failed
  //     final errorMessage = response.body;
  //     // Display an error message to the user or handle the error appropriately
  //   }
  // }

//
// void signup(String username, String email, String password) async {
//   // Make API request
//   var apiUrl = 'https://api.example.com/signup';
//   var response = await http.post(
//     Uri.parse(apiUrl),
//     body: {
//       'username': username,
//       'email': email,
//       'password': password,
//     },
//   );
//
//   // Handle API response
//   if (response.statusCode == 200) {
//     // Signup successful
//     var responseBody = response.body;
//     // Parse the response body and extract the access token
//     var accessToken = json['access_token']; // Extract the access token from the response
//
//   // Save the access token for future use
//   saveAccessToken(accessToken);
//   Navigator.of(context as BuildContext).pushReplacementNamed('homePage');
//
//   // Navigate to the next screen or perform any desired action
//   } else {
//   // Signup failed
//   var errorMessage = response.body;
//   // Handle the error message appropriately (display error, show toast, etc.)
//   }
// }
//
// void saveAccessToken(String accessToken) async{
//   // Save the access token using your preferred storage mechanism
//   // e.g., shared preferences, secure storage, etc.
//   final storage = FlutterSecureStorage();
//   await storage.write(key: 'accessToken', value: accessToken);
//   var accessToken = await storage.read(key: 'accessToken');
// }