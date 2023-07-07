
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../P_API/login_function.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  GlobalKey<FormState> formstatein = new GlobalKey<FormState>();
  GlobalKey<FormState> formstateup = new GlobalKey<FormState>();
  String? baseUrl = "https://we-care-api.onrender.com/api/v1/me";
  final storage = const FlutterSecureStorage();
  //
  // Future login_api() async {
  //   final response = await http.post(
  //     Uri.parse('$baseUrl/auth/login'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: json.encode(
  //       <String, String>{"email": email.text, "password": password.text},
  //     ),
  //   );
  //   if (response.statusCode == 200) {
  //
  //     await storage.write(
  //       key: 'token',
  //       value: "${json.decode(response.body)['accessToken']}",
  //     );
  //    String? globalToken = await storage.read(key: 'token');
  //
  //
  //   }
  //   print(response.body);
  //   print('object');
  //
  //   return response.statusCode;
  // }
  signin() async {
    var formdata = formstatein.currentState;

    if (formdata!.validate()) {
      int statusCode = await login_api(email.text, password.text);


      if (statusCode == 200) {
        // Navigator.of(context).pop();
        Navigator.of(context).pushReplacementNamed('homePage');

      } else {
        // Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Invalid Email or Password"),
            //   backgroundColor: primaryColor,
          ),
        );
      }

      //   print('valid');
    }
  }
  //
// Future signin() async {
//     var formdata = formstatein.currentState;
//     if (formdata!.validate()) {
//       var data = {"email": email.text, "password": password.text};
//       var url = Uri.parse('$baseUrl/auth/login');
//       var response = await http.post(url, body: data);
//       var responsebody = jsonDecode(response.body);
//       if (responsebody.statusCode == 200) {
//         print(responsebody["username"]);
//       }} else {
//       print('not valid');
//     }}


  // signin() {
  //   var formdata = formstatein.currentState;
  //       if (formdata!.validate()) {
  //     print('valid');
  //   }
  // }
  //  void signin(String email, password) async {
//     try {
//       Response response = await post(Uri.parse("https://reqres.in/api/register"),
//           body: {'email': email, 'password': password});
//       if (response.statusCode == 200) {
//         var data = jsonDecode(response.body.toString());
//         print('success');
// } else {print('failed');}
//     } catch (e) {
//       print(e.toString()); }}

  bool showsignin = true;
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;

    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
            ),
            buildpositiontop(mdw),
            buildpositionbuttom(mdw),
            Container(
              height: 1000,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 60),
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  formbuildsignin(mdw),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'هل نسيت كلمة المرور؟',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(
                                right: 20, left: 20, top: 5, bottom: 5),
                            backgroundColor: Color.fromRGBO(33, 150, 243, .8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            textStyle: TextStyle(fontSize: 20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                          onPressed:signin,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'فى حال ليس لديك حساب',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.pushNamed(context, 'signup');
                                  });
                                },
                                child: Text(' انشاء حساب',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('homePage');
                          },
                          icon: Icon(Icons.arrow_forward),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ),
          ],
        )));
  }

  Center formbuildsignin(double mdw) {
    return Center(
        child: AnimatedContainer(
            duration: Duration(milliseconds: 600),
            margin: EdgeInsets.only(top: 20),
            height: 250,
            width: mdw / 1.2,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.1,
                  blurRadius: 6,
                  offset: Offset(5, 5))
            ]),
            child: Form(
                key: formstatein,
                child: Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const  Text(
                            'اسم المستخدم',
                            style: TextStyle(color: Colors.blue),
                          ),
                         const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: email,
                            validator: (String? val) {
                              if (val!.trim().isEmpty) {
                                return "لا يمكن ان يكون الحقل فارغ";
                              }
                              if (val.trim().length < 5) {
                                return "اسم المستخدم اقل من 5";
                              }
                              if (val.trim().length > 30) {
                                return "اسم المستخدم اكبر من 20";
                              }
                              RegExp regex = new RegExp(
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                              if (!regex.hasMatch(val)) {
                                return 'البريد الالكتروني غير صحيح';
                              }
                            },
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(5),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'ادخل البريد الالكتروني',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'كلمة المرور',
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                              controller: password,
                              validator: (String? val) {
                                if (val!.trim().isEmpty) {
                                  return "لا يمكن ان يكون الحقل فارغ";
                                }
                                if (val.trim().length < 5) {
                                  return "كلمة المرور اقل من 5";
                                }
                                if (val.trim().length > 20) {
                                  return "كلمة المرور اكبر من 20";
                                }
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(5),
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'ادخل كلمة المرور',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              )),
                        ],
                      ),
                    )))));
  }

  Positioned buildpositiontop(double mdw) {
    return Positioned(
        child: Transform.scale(
      scale: 1.3,
      child: Transform.translate(
        offset: Offset(0, -mdw / 1.7),
        child: Container(
          height: mdw,
          width: mdw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(mdw),
            color: Colors.grey,
          ),
        ),
      ),
    ));
  }

  Positioned buildpositionbuttom(double mdw) {
    return Positioned(
        right: mdw / 1.5,
        top: 300,
        child: Container(
          height: mdw,
          width: mdw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(mdw),
            color: Color.fromRGBO(33, 150, 243, .3),
          ),
        ));
  }
}
