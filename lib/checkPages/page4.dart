import 'package:flutter/material.dart';

class iterativePage extends StatefulWidget {
  @override
  State<iterativePage> createState() => _iterativePageState();
}

class _iterativePageState extends State<iterativePage> {
  // String? Q1;
  // String? Q2;
  // String? Q3;
  // String? Q4;
  // String? Q5;
  // String? Q6;
  // String? Q7;
  // String? Q8;

  List<String?> selectedAnswers = List<String?>.filled(8, null);


  bool areAllQuestionsAnswered() {
    return selectedAnswers.every((answer) => answer != null);
  }

  void submitForm() {
    if (areAllQuestionsAnswered()) {
      // Process the selected answers
      print('Selected Answers: $selectedAnswers');
      Navigator.pushNamed(context, 'form5');

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
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      body: Container(

        child: ListView(
        padding: EdgeInsets.all(20),
          children: [Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              Text('الاستجابة الوجدانية – العاطفية',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.cyan)),
              Padding(padding: EdgeInsets.only(bottom: 15)),
              Column(children: [
            
                Text(
              "يحتاج الي الكثير من الطمأنة إذا ما تغيرت الأمور أو حدث خطأ ما",
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
                ],),
              Divider(),
            Column(children: [
              Text(
              "يصبح سريع الإحباط عندما يفشل في عمل شئ ما",
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
            ],),
              Divider(),
            Column(children: [
              Text(
              "يصاب بنوبات من الغضب عندما يحبط ",
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
            ],),
              Divider(),
            Column(children: [
              Text(
              "يصاب بنوبات من الغضب عندما يحبط ",
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
            ],),
              Divider(),

              Column(children: [
              Text(
              "يستجيب بشكل سلبي – يرفض – عندما يقدم له النصح أو النصح أو الطلب منه شئ أو يتم توجيهه ",
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
            ],),
              Divider(),

              Column(children: [
              Text(
              "يستجيب برد فعل حاد ( مثل : البكاء الشديد ، الصراخ ونوبات الغضب ) عند سماع صوت مرتفع أو ضوضاء غير متوقعة ",
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
            ],),
              Divider(),

              Column(children: [
              Text(
              "يصاب بنوبة من الغضب عندما لايحصل علي ما يريد بطريقته الخاصة",
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
            ],),
              Divider(),

             Column(children: [
              Text(
              "يصاب بنوبة من الغضب عندما يخبره أحد أن يتوقف ن عمل شئ يكون مستمعا به",
              style: TextStyle(fontSize: 18),
            ),
                RadioListTile(
                  title: Text("ابدا"),
                  value: "0",
                  groupValue: selectedAnswers[7],
                  onChanged: (value) {
                    setState(() {
                      selectedAnswers[7] = value.toString();
                    });
                  },
                ),
            RadioListTile(
              title: Text("احيانا"),
              value: "1",
              groupValue: selectedAnswers[7],
              onChanged: (value) {
                setState(() {
                  selectedAnswers[7] = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("كثيرا"),
              value: "2",
              groupValue: selectedAnswers[7],
              onChanged: (value) {
                setState(() {
                  selectedAnswers[7] = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("كثيرا جدا"),
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
                  backgroundColor: Color.fromARGB(255, 9, 25, 112),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(8),
                  textStyle: TextStyle(fontSize: 30),
                ),
                child: Text(
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