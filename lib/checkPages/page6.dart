import 'package:flutter/material.dart';

class form6 extends StatefulWidget {
  @override
  State<form6> createState() => _form6State();
}

class _form6State extends State<form6> {
  String? Q1;
  String? Q2;
  String? Q3;
  String? Q4;
  String? Q5;
  String? Q6;
  String? Q7;

  List<String?> selectedAnswers = List<String?>.filled(7, null);


  bool areAllQuestionsAnswered() {
    return selectedAnswers.every((answer) => answer != null);
  }

  void submitForm() {
    if (areAllQuestionsAnswered()) {
      // Process the selected answers
      print('Selected Answers: $selectedAnswers');
      Navigator.pushNamed(context, 'form6');

      // Proceed to the next page or perform further actions
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(' الفورم غير مكتمله'),
            content: Text('اجب جميع الاسئله'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('تم'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Container(

              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text('اللغة اللاتكيفية', style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan)),
                      Padding(padding: EdgeInsets.only(bottom: 15)),
                      Column(
                        children: [
                          Text(
                            "يكرر – مصاداة – الكلمات أو العبارات شفهيا أو مع الإشارات  ",
                            style: TextStyle(fontSize: 18),
                          ),
                          Divider(),
                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[0],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[0] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[0],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[0] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[0],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[0] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[0],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[0] = value.toString();
                              });
                            },
                          )
                        ],
                      ),
                      Divider(),
                      Column(
                        children: [
                          Text(
                            "يكرر كلمات خارج السياق ( يكرر كلمات أو العبارات يكون قد سمعها في وقت سابق) ",
                            style: TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          )
                        ],
                      ),
                      Divider(),
                      Column(
                        children: [
                          Text(
                            "يتحدث في المواقف المؤثرة بشكل سطحي",
                            style: TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                      Divider(),
                      Column(
                        children: [
                          Text(
                            "يستخدم ( نعم و لا ) بشكل غير مناسب ، فيقول : نعم عند سؤاله عن شئ لا يحبه ، أو يقول: لا عند سؤاله عن لعبة مفضلة أو هدية يريدها",
                            style: TextStyle(fontSize: 20),
                          ),

                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                      Divider(),
                      Column(
                        children: [
                          Text(
                            "يستخدم الضمائر ( هو أو هي ) بدلا من ( أنا ) عند الإشارة الي نفسه",
                            style: TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                      Divider(),
                      Column(
                        children: [
                          Text(
                            "يتحدث بشكل غير طبيعي من حيث نغمة الصوت أو المعدل ",
                            style: TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                      Divider(),
                      Column(
                        children: [
                          Text(
                            "ينطق الكلمات أو العبارات المميزة ولكن بلا معني",
                            style: TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: Text("كثيرا جدا"),
                            value: "3",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0, left: 180),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 9, 25, 112),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.all(8),
                        textStyle: TextStyle(fontSize: 30),
                      ),
                      child: Text(
                        'تسجيل',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: submitForm
                    ),
                  ),
                ],
              ),
            )));
  }
}