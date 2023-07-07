import 'package:flutter/material.dart';

class cognitivePage extends StatefulWidget {
  @override
  State<cognitivePage> createState() => _cognitivePageState();
}

class _cognitivePageState extends State<cognitivePage> {
  // String? Q1;
  // String? Q2;
  // String? Q3;
  // String? Q4;
  // String? Q5;
  // String? Q6;
  // String? Q7;

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
                        Text('النمط المعرفي',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.cyan)),
                        Padding(padding: EdgeInsets.only(bottom: 15)),
                        Column(
                          children: [
                            Text(
                              "يستخدم أثناء حديثه كلمات دقيقة وبشكل استثنائى ",
                              style: TextStyle(fontSize: 18),
                            ),

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
                              "يتعلق بشدة بالمعاني الملموسة – المادية – للكلمات ",
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
                              "يتحدث بشكل مفرط عن موضوع محدد ",
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
                              "يظهر مهارة أو معرفة فائقة بموضوعات محددة",
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
                              "يظهر ذاكرة ممتازة",
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
                              " يظهر اهتماما شديدا وواسعا بموضوعات فكرية معينة",
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
                              "يعلق بملاحظات ساذجة ( غير واع بنتائج ردود أفعال الاخرين)",
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
