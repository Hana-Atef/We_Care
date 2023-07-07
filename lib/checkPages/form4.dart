import 'package:flutter/material.dart';

import '../P_API/exam_4_map.dart';
import '../P_API/login_function.dart';

class iterativePage extends StatefulWidget {
  @override
  State<iterativePage> createState() => _iterativePageState();
}

class _iterativePageState extends State<iterativePage> {

  List<String?> selectedAnswers = List<String?>.filled(8, null);
  GetExam4? ex1=GetExam4.fromJson(globalToken as Map<String, dynamic>);
  List<Questions4?>? Qest;

  bool areAllQuestionsAnswered() {
    return selectedAnswers.every((answer) => answer != null);
  }

  void submitForm() {
    if (areAllQuestionsAnswered()) {
      // Process the selected answers
      print('Selected Answers: $selectedAnswers');
      // Navigator.pushNamed(context, 'form5');
      //submit functiont

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
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      body: Container(

        child: ListView(
        padding: const EdgeInsets.all(20),
          children: [Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text('الاستجابة الوجدانية – العاطفية',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.cyan)),
              const Padding(padding: EdgeInsets.only(bottom: 15)),
              Column(children: [
            
                Text(
                  Qest![1]!.Text!,
              // "يحتاج الي الكثير من الطمأنة إذا ما تغيرت الأمور أو حدث خطأ ما",
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
                ],),
              const Divider(),
            Column(children: [
              Text(
                Qest![2]!.Text!,
              // "يصبح سريع الإحباط عندما يفشل في عمل شئ ما",
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
            ],),
              const Divider(),
            Column(children: [
              Text(
                Qest![3]!.Text!,
              // "يصاب بنوبات من الغضب عندما يحبط ",
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
            ],),
              const Divider(),
            Column(children: [
              Text(
                Qest![4]!.Text!,
              // "يصاب بنوبات من الغضب عندما يحبط ",
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
            ],),
              const Divider(),

              Column(children: [
              Text(
                Qest![5]!.Text!,
              // "يستجيب بشكل سلبي – يرفض – عندما يقدم له النصح أو النصح أو الطلب منه شئ أو يتم توجيهه ",
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
            ],),
              const Divider(),

              Column(children: [
              Text(
                Qest![6]!.Text!,
              // "يستجيب برد فعل حاد ( مثل : البكاء الشديد ، الصراخ ونوبات الغضب ) عند سماع صوت مرتفع أو ضوضاء غير متوقعة ",
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
            ],),
              const Divider(),

              Column(children: [
              Text(
                Qest![7]!.Text!,
              // "يصاب بنوبة من الغضب عندما لايحصل علي ما يريد بطريقته الخاصة",
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
            ],),
              const Divider(),

             Column(children: [
              Text(
                Qest![8]!.Text!,
              // "يصاب بنوبة من الغضب عندما يخبره أحد أن يتوقف ن عمل شئ يكون مستمعا به",
              style: const TextStyle(fontSize: 18),
            ),
                RadioListTile(
                  title: const Text("ابدا"),
                  value: "0",
                  groupValue: selectedAnswers[7],
                  onChanged: (value) {
                    setState(() {
                      selectedAnswers[7] = value.toString();
                    });
                  },
                ),
            RadioListTile(
              title: const Text("احيانا"),
              value: "1",
              groupValue: selectedAnswers[7],
              onChanged: (value) {
                setState(() {
                  selectedAnswers[7] = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text("كثيرا"),
              value: "2",
              groupValue: selectedAnswers[7],
              onChanged: (value) {
                setState(() {
                  selectedAnswers[7] = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text("كثيرا جدا"),
              value: "3",
              groupValue: selectedAnswers[7],
              onChanged: (value) {
                setState(() {
                  selectedAnswers[7] = value.toString();
                });
              },
            ),
            ],),

          ],
        ),
        Padding(
           padding: const EdgeInsets.only(right:0, left: 180),
           child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 9, 25, 112),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(8),
                  textStyle: const TextStyle(fontSize: 30),
                ),
                child: const Text(
                  'form5',
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                onPressed:submitForm
              ),
         ),
       
        ],
      ),
      )
    ));
  }
}