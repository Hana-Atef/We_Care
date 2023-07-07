import 'package:flutter/material.dart';

import '../P_API/exam_6_map.dart';
import '../P_API/login_function.dart';

class form6 extends StatefulWidget {
  @override
  State<form6> createState() => _form6State();
}

class _form6State extends State<form6> {
  GetExam6? ex1=GetExam6.fromJson(globalToken as Map<String, dynamic>);
  List<Questions6?>? Qest;
  List<String?> selectedAnswers = List<String?>.filled(7, null);


  bool areAllQuestionsAnswered() {
    return selectedAnswers.every((answer) => answer != null);
  }

  void submitForm() {
    if (areAllQuestionsAnswered()) {
      // Process the selected answers
      print('Selected Answers: $selectedAnswers');
      Navigator.pushNamed(context, 'form1');

      // Proceed to the next page or perform further actions
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(' الفورم غير مكتمله'),
            content: const Text('اجب جميع الاسئله'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('تم'),
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
                padding: const EdgeInsets.all(20),
                children: [
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      const Text('اللغة اللاتكيفية', style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan)),
                      const Padding(padding: EdgeInsets.only(bottom: 15)),
                      Column(
                        children: [
                          Text(
                            Qest![1]!.Text!,
                            // "يكرر – مصاداة – الكلمات أو العبارات شفهيا أو مع الإشارات  ",
                            style: const TextStyle(fontSize: 18),
                          ),
                          const Divider(),
                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[0],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[0] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[0],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[0] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[0],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[0] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا جدا"),
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
                      const Divider(),
                      Column(
                        children: [
                          Text(
                            Qest![2]!.Text!,
                            // "يكرر كلمات خارج السياق ( يكرر كلمات أو العبارات يكون قد سمعها في وقت سابق) ",
                            style: const TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[1],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[1] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا جدا"),
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
                      const Divider(),
                      Column(
                        children: [
                          Text(
                            Qest![3]!.Text!,
                            // "يتحدث في المواقف المؤثرة بشكل سطحي",
                            style: const TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[2],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[2] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا جدا"),
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
                      const Divider(),
                      Column(
                        children: [
                          Text(
                            Qest![4]!.Text!,
                            // "يستخدم ( نعم و لا ) بشكل غير مناسب ، فيقول : نعم عند سؤاله عن شئ لا يحبه ، أو يقول: لا عند سؤاله عن لعبة مفضلة أو هدية يريدها",
                            style: const TextStyle(fontSize: 20),
                          ),

                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[3],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[3] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا جدا"),
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
                      const Divider(),
                      Column(
                        children: [
                          Text(
                            Qest![5]!.Text!,
                            // "يستخدم الضمائر ( هو أو هي ) بدلا من ( أنا ) عند الإشارة الي نفسه",
                            style: const TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[4],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[4] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا جدا"),
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
                      const Divider(),
                      Column(
                        children: [
                          Text(
                            Qest![6]!.Text!,
                            // "يتحدث بشكل غير طبيعي من حيث نغمة الصوت أو المعدل ",
                            style: const TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[5],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[5] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا جدا"),
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
                      const Divider(),
                      Column(
                        children: [
                          Text(
                            Qest![7]!.Text!,
                            // "ينطق الكلمات أو العبارات المميزة ولكن بلا معني",
                            style: const TextStyle(fontSize: 18),
                          ),

                          RadioListTile(
                            title: const Text("ابدا"),
                            value: "0",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("احيانا"),
                            value: "1",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا"),
                            value: "2",
                            groupValue: selectedAnswers[6],
                            onChanged: (value) {
                              setState(() {
                                selectedAnswers[6] = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("كثيرا جدا"),
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
                        backgroundColor: const Color.fromARGB(255, 9, 25, 112),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(8),
                        textStyle: const TextStyle(fontSize: 30),
                      ),
                      child: const Text(
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