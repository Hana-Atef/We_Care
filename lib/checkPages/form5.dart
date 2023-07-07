import 'package:flutter/material.dart';

import '../P_API/exam_5_map.dart';
import '../P_API/login_function.dart';

class cognitivePage extends StatefulWidget {
  @override
  State<cognitivePage> createState() => _cognitivePageState();
}

class _cognitivePageState extends State<cognitivePage> {
  GetExam5? ex1=GetExam5.fromJson(globalToken as Map<String, dynamic>);
  List<Questions5?>? Qest;
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
                        const Text('النمط المعرفي',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.cyan)),
                        const Padding(padding: EdgeInsets.only(bottom: 15)),
                        Column(
                          children: [
                            Text(
                              Qest![1]!.Text!,
                              // "يستخدم أثناء حديثه كلمات دقيقة وبشكل استثنائى ",
                              style: const TextStyle(fontSize: 18),
                            ),

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
                              // "يتعلق بشدة بالمعاني الملموسة – المادية – للكلمات ",
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
                              // "يتحدث بشكل مفرط عن موضوع محدد ",
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
                              // "يظهر مهارة أو معرفة فائقة بموضوعات محددة",
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
                              // "يظهر ذاكرة ممتازة",
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
                              // " يظهر اهتماما شديدا وواسعا بموضوعات فكرية معينة",
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
                              // "يعلق بملاحظات ساذجة ( غير واع بنتائج ردود أفعال الاخرين)",
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
                          'form6',
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
