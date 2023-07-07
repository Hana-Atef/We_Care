import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'dart:convert';

import 'package:http/http.dart';
import '../P_API/sginup_api.dart';

class signupPage extends StatefulWidget {
  @override
  _signupPageState createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmpassword = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();
  GlobalKey<FormState> formstateup = new GlobalKey<FormState>();



  signup() async {
    var formdata = formstateup.currentState;
    if (formdata!.validate()) {
      int statusCode = await signup_api( username.text,email.text, password.text,);
      if (statusCode == 200) {
        Navigator.of(context).pushReplacementNamed('homePage');

      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Invalid Email or Password"),
          ),
        );
      }
    }
  }
  //
  // Future signup() async {
  //   var formdata = formstateup.currentState;
  //   if (formdata!.validate()) {
  //     var data = {"email": email.text, "password": password.text};
  //     var url = Uri.https("https://we-care-api.onrender.com/api/v1/auth/sign-up");
  //     var response = await http.post(url, body: data);
  //     var responsebody = jsonDecode(response.body.toString());
  //     if (responsebody.statusCode == 200) {
  //       print(responsebody["username"]);
  //       Navigator.pushNamed(context, 'homePage');
  //     }} else {
  //     print('not valid');
  //   }}

//     void signup() async {
//     try {
//       Response response = await post(Uri.parse("http://we-care-api.onrender.com/api/v1/auth/sign-up"),
//           body: {'email': email, 'password': password});
//       if (response.statusCode == 200) {
//         var data = jsonDecode(response.body.toString());
//         print('success');
// } else {print('failed');}
//     } catch (e) {
//       print(e.toString()); }}

  bool _securityPass = true;
  bool _securityPassword = true;
  String? gender;

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
          ),
          buildpositiontop(mdw),
          buildpositionbuttom(mdw),
          Container(
              height: 1000,
              child: SingleChildScrollView(
                  child: Column(children: [
                Center(
                  child: Container(
                    margin:const EdgeInsets.only(top: 60),
                    child:const Text(
                      'انشاء حساب',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
               const SizedBox(
                  height: 50,
                ),
                AnimatedContainer(
                    duration:const Duration(milliseconds: 600),
                    margin:const EdgeInsets.only(top: 20),
                    height: 500,
                    width: mdw / 1.2,
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 0.1,
                          blurRadius: 6,
                          offset: Offset(5, 5))
                    ]),
                    child: Form(
                        key: formstateup,
                        child: Container(
                            margin:const EdgeInsets.only(top: 10),
                            padding:const EdgeInsets.all(10),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 const Text(
                                    'اسم المستخدم',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                const  SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(
                                    controller: username,
                                    validator: (String? val) {
                                          if (val!.trim().isEmpty) {
                                            return "لا يمكن ان يكون الحقل فارغ";
                                          }
                                          if (val.trim().length < 5) {
                                            return "اسم المستخدم اقل من 5";
                                          }
                                          if (val.trim().length > 20) {
                                            return "اسم المستخدم اكبر من 20";
                                          }
                                    },
                                    decoration: InputDecoration(
                                        contentPadding:const EdgeInsets.all(5),
                                        fillColor: Colors.grey.shade100,
                                        filled: true,
                                        hintText: 'اسم المستخدم ',
                                        border: OutlineInputBorder(
                                            borderRadius:BorderRadius.circular(10))),
                                  ),
                                const  SizedBox(
                                    height: 15,
                                  ),
                                const  Text(
                                    'البريد الالكتروني',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                const  SizedBox(
                                    height: 5,
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
                                          return "اسم المستخدم اكبر من 30";
                                        }
                                         RegExp regex = new RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                                        if (!regex.hasMatch(val)) {
                                          return 'البريد الالكتروني غير صحيح';
                                        }
                                    },
                                    decoration: InputDecoration(
                                        contentPadding:const EdgeInsets.all(5),
                                        fillColor: Colors.grey.shade100,
                                        filled: true,
                                        hintText: 'ادخل البريد الالكتروني',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                const  SizedBox(
                                    height: 15,
                                  ),
                                const  Text(
                                    'كلمة المرور',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                const  SizedBox(
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
                                    obscureText: _securityPass,
                                    decoration: InputDecoration(
                                        contentPadding:const EdgeInsets.all(5),
                                        fillColor: Colors.grey.shade100,
                                        filled: true,
                                        hintText: 'ادخل كلمة المرور',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                _securityPass = !_securityPass;
                                              });
                                            },
                                            icon: Icon(_securityPass
                                                ? Icons.visibility_off
                                                : Icons.remove_red_eye))),
                                  ),
                                const  SizedBox(
                                    height: 15,
                                  ),
                                const  Text(
                                    'تأكيد كلمة المرور',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                const  SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(
                                    controller: confirmpassword,
                                    validator: (String? val) {
                                        if (val != password.text) {
                                            return 'كلمة المرور غير متطابقه';
                                          }
                                    },
                                    obscureText: _securityPassword,
                                    decoration: InputDecoration(
                                        contentPadding:const EdgeInsets.all(5),
                                        fillColor: Colors.grey.shade100,
                                        filled: true,
                                        hintText: 'تاكيد كلمة المرور',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                _securityPassword =
                                                    !_securityPassword;
                                              });
                                            },
                                            icon: Icon(_securityPassword
                                                ? Icons.visibility_off
                                                : Icons.remove_red_eye))),
                                  ),
                                const  SizedBox(
                                    height: 15,
                                  ),
                                const  Text(
                                    'رقم الهاتف',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                               const   SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(
                                    controller: phonenumber,
                                    validator: (String? val) {
                                       if (val!.trim().isEmpty) {
                                          return "لا يمكن ان يكون الحقل فارغ";
                                        }
                                        if (val.trim().length < 5) {
                                          return "رقم الهاتف اقل من 5";
                                        }
                                        if (val.trim().length > 20) {
                                          return "رقم الهاتف اكبر من 20";
                                        }
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(5),
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: 'ادخل رقم الهاتف',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    keyboardType: TextInputType.phone,
                                  ),
                              const SizedBox(
                                    height: 15,
                                  ),

                              ]),
                            )))),
               const SizedBox(
                  height: 30,
                ),
                Container(
                    child: Column(children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'هل نسيت كلمة المرور؟',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                const  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, top: 5, bottom: 5),
                      backgroundColor:const Color.fromRGBO(33, 150, 243, .8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      // fixedSize: Size(150, 50),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                       const Text(
                          'انشاء حساب',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                       const Icon(Icons.arrow_forward)
                      ],
                    ),
                    onPressed: signup,
                  ),
                  Container(
                    margin:const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'لديك حساب بالفعل',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        InkWell(
                          onTap: (() {
                            setState(() {
                              Navigator.pushNamed(context, 'login');
                            });
                          }),
                          child: const Text(' تسجيل الدخول ',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),

                  //       SingleChildScrollView(
                  //         child: Center(
                  // child: Container(
                  //     margin: EdgeInsets.only(top: 15),
                  //     height: 580,
                  //     width: mdw / 1.2,
                  //     decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  //         BoxShadow(
                  //             color: Colors.grey,
                  //             spreadRadius: 0.1,
                  //             blurRadius: 6,
                  //             offset: Offset(5, 5))
                  //     ]),
                  //     child: Form(
                  //           child: Container(
                  //               margin: EdgeInsets.only(top: 10),
                  //               padding: EdgeInsets.all(10),
                  //               child: Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //     Text(
                  //       'اسم المستخدم',
                  //       style: TextStyle(color: Colors.blue),
                  //     ),
                  //     SizedBox(
                  //       height: 5,
                  //     ),
                  //     TextFormField(
                  //       decoration: InputDecoration(
                  //           contentPadding: EdgeInsets.all(5),
                  //           fillColor: Colors.grey.shade100,
                  //           filled: true,
                  //           hintText: 'اسم المستخدم ',
                  //           border: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(10))),
                  //     ),
                  //     SizedBox(
                  //       height: 15,
                  //     ),
                  //     Text(
                  //       'البريد الالكتروني',
                  //       style: TextStyle(color: Colors.blue),
                  //     ),
                  //     SizedBox(
                  //       height: 5,
                  //     ),
                  //     TextFormField(
                  //       obscureText: true,
                  //       decoration: InputDecoration(
                  //           contentPadding: EdgeInsets.all(5),
                  //           fillColor: Colors.grey.shade100,
                  //           filled: true,
                  //           hintText: 'ادخل البريد الالكتروني',
                  //           border: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(10))),
                  //       keyboardType: TextInputType.emailAddress,
                  //     ),
                  //     SizedBox(
                  //       height: 15,
                  //     ),
                  //     Text(
                  //       'كلمة المرور',
                  //       style: TextStyle(color: Colors.blue),
                  //     ),
                  //     SizedBox(
                  //       height: 5,
                  //     ),
                  //     TextFormField(
                  //       obscureText: _securityPass,
                  //       decoration: InputDecoration(
                  //           contentPadding: EdgeInsets.all(5),
                  //           fillColor: Colors.grey.shade100,
                  //           filled: true,
                  //           hintText: 'ادخل كلمة المرور',
                  //           border: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(10)),
                  //           suffixIcon: IconButton(
                  //             onPressed: () {
                  //               setState() {
                  //                 _securityPass = !_securityPass;
                  //               };
                  //             },
                  //             icon: Icon(_securityPass ? Icons.visibility_off: Icons.remove_red_eye)),
                  //               ),
                  //     ),
                  //     SizedBox(
                  //       height: 15,
                  //     ),
                  //     Text(
                  //       'تأكيد كلمة المرور',
                  //       style: TextStyle(color: Colors.blue),
                  //     ),
                  //     SizedBox(
                  //       height: 5,
                  //     ),
                  //      TextFormField(
                  //   obscureText: _securityPassword,
                  //   decoration: InputDecoration(
                  //       fillColor: Colors.grey.shade100,
                  //       filled: true,
                  //       hintText: 'confirm Password',
                  //       labelText: 'confirm Password',
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10)),
                  //       suffixIcon: IconButton(
                  //           onPressed: () {
                  //             setState(() {
                  //               _securityPassword = !_securityPassword;
                  //             });
                  //           },
                  //           icon: Icon(_securityPassword
                  //               ? Icons.visibility_off
                  //               : Icons.remove_red_eye))),
                  // ),
                  //     SizedBox(
                  //       height: 15,
                  //     ),
                  //     Text(
                  //       'رقم الهاتف',
                  //       style: TextStyle(color: Colors.blue),
                  //     ),
                  //     SizedBox(
                  //       height: 5,
                  //     ),
                  //     TextFormField(
                  //       obscureText: true,
                  //       decoration: InputDecoration(
                  //         contentPadding: EdgeInsets.all(5),
                  //         fillColor: Colors.grey.shade100,
                  //         filled: true,
                  //         hintText: 'ادخل رقم الهاتف',
                  //         border: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(10)),
                  //       ),
                  //       keyboardType: TextInputType.phone,
                  //     ),
                  //     SizedBox(
                  //       height: 15,
                  //     ),
                  //     Text(
                  //       'النوع',
                  //       style: TextStyle(color: Colors.blue),
                  //     ),
                  //     SizedBox(
                  //       height: 5,
                  //     ),
                  //     // RadioListTile(
                  //     //   title: Text("انثى"),
                  //     //   value: "female",
                  //     //   groupValue: gender,
                  //     //   onChanged: (value) {
                  //     //     setState() {
                  //     //       gender = value.toString();
                  //     //     };},
                  //     // ),
                  //     // RadioListTile(
                  //     //   title: Text("ذكر"),
                  //     //   value: "male",
                  //     //   groupValue: gender,
                  //     //   onChanged: (value) {
                  //     //     setState() {
                  //     //       gender = value.toString();
                  //     //     };},
                  //     // ),
                  //                 ],
                  //               ))))),
                  //       )
                ]))
              ])))
        ])));
  }
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
          color: Color.fromRGBO(33, 150, 243, 0.8),
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
          color: Color.fromRGBO(158, 158, 158, 0.3),
        ),
      ));
}















          // SingleChildScrollView(
          //   child: Container(
          //     padding: EdgeInsets.only(
          //       top: MediaQuery.of(context).size.height * 0.1,
          //       right: 35,
          //       left: 35,
          //     ),
          //     child: Column(
          //       children: [
          //         TextField(
          //           decoration: InputDecoration(
          //               fillColor: Colors.grey.shade100,
          //               filled: true,
          //               hintText: 'Name',
          //               border: OutlineInputBorder(
          //                   borderRadius: BorderRadius.circular(10))),
          //           keyboardType: TextInputType.name,
          //         ),
          //         SizedBox(
          //           height: 30,
          //         ),
          //         TextField(
          //           decoration: InputDecoration(
          //               fillColor: Colors.grey.shade100,
          //               filled: true,
          //               hintText: 'Email',
          //               labelText: 'Email',
          //               border: OutlineInputBorder(
          //                   borderRadius: BorderRadius.circular(10))),
          //           keyboardType: TextInputType.emailAddress,
          //         ),
          //         SizedBox(
          //           height: 30,
          //         ),
          //         TextField(
          //           obscureText: _securityPass,
          //           decoration: InputDecoration(
          //               fillColor: Colors.grey.shade100,
          //               filled: true,
          //               hintText: 'Password',
          //               labelText: 'Password',
          //               border: OutlineInputBorder(
          //                   borderRadius: BorderRadius.circular(10)),
          //               suffixIcon: IconButton(
          //                   onPressed: () {
          //                     setState(() {
          //                       _securityPass = !_securityPass;
          //                     });
          //                   },
          //                   icon: Icon(_securityPass
          //                       ? Icons.visibility_off
          //                       : Icons.remove_red_eye))),
          //         ),
          //         SizedBox(
          //           height: 30,
          //         ),
          //         TextField(
          //           obscureText: _securityPassword,
          //           decoration: InputDecoration(
          //               fillColor: Colors.grey.shade100,
          //               filled: true,
          //               hintText: 'confirm Password',
          //               labelText: 'confirm Password',
          //               border: OutlineInputBorder(
          //                   borderRadius: BorderRadius.circular(10)),
          //               suffixIcon: IconButton(
          //                   onPressed: () {
          //                     setState(() {
          //                       _securityPassword = !_securityPassword;
          //                     });
          //                   },
          //                   icon: Icon(_securityPassword
          //                       ? Icons.visibility_off
          //                       : Icons.remove_red_eye))),
          //         ),
          //         SizedBox(
          //           height: 30,
          //         ),
          //         TextField(
          //           decoration: InputDecoration(
          //               fillColor: Colors.grey.shade100,
          //               filled: true,
          //               hintText: 'Phone Number',
          //               border: OutlineInputBorder(
          //                   borderRadius: BorderRadius.circular(10))),
          //           keyboardType: TextInputType.phone,
          //         ),
          //         SizedBox(
          //           height: 30,
          //         ),
          //         TextField(
          //           decoration: InputDecoration(
          //               fillColor: Colors.grey.shade100,
          //               filled: true,
          //               hintText: 'Gender',
          //               border: OutlineInputBorder(
          //                   borderRadius: BorderRadius.circular(10))),
          //         ),
          //         SizedBox(
          //           height: 40,
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text(
          //               'Sign UP',
          //               style:
          //                   TextStyle(color: Color(0xff4c505b), fontSize: 25),
          //             ),
          //             CircleAvatar(
          //               radius: 30,
          //               backgroundColor: Color(0xff4c505b),
          //               child: IconButton(
          //                 color: Colors.white,
          //                 onPressed: () {},
          //                 icon: Icon(Icons.arrow_forward),
          //               ),
          //             )
          //           ],
          //         ),
          //         SizedBox(
          //           height: 30,
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             TextButton(
          //                 onPressed: () {
          //                   Navigator.pushNamed(context, 'login');
          //                 },
          //                 child: Text(
          //                   'Sign IN',
          //                   style: TextStyle(
          //                     color: Color(0xff4c505b),
          //                     fontSize: 18,
          //                     decoration: TextDecoration.underline,
          //                   ),
          //                 )),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

