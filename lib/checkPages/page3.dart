import 'package:flutter/material.dart';

class socialPage extends StatefulWidget {
  @override
  State<socialPage> createState() => _socialPageState();
}

class _socialPageState extends State<socialPage> {
  // String? Q1;
  // String? Q2;
  // String? Q3;
  // String? Q4;
  // String? Q5;
  // String? Q6;
  // String? Q7;
  // String? Q8;
  // String? Q9;
  List<String?> selectedAnswers = List<String?>.filled(9, null);


  bool areAllQuestionsAnswered() {
    return selectedAnswers.every((answer) => answer != null);
  }

  void submitForm() {
    if (areAllQuestionsAnswered()) {
      // Process the selected answers
      print('Selected Answers: $selectedAnswers');
      Navigator.pushNamed(context, 'form4');

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
        child:  ListView(
            padding: EdgeInsets.all(20),
           children: [Column(
           children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Column(children: [
                    Text('التواصل الاجتماعي',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.cyan)),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    Text(
                    "يستجيب بشكل غير لائق للمنبهات التي تتطلب روح الدعابة (على سبيل المثال: لا يضحك على النكات والرسوم المتحركة والقصص المضحكة",
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
                    "يعاني من صعوبة في فهم النكات",
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
                    title:Text("كثيرا"),
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
                    "يعاني من صعوبة في فهم التعبيرات العامية",
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
                    "يجد صعوبة في معرفة ما إذا كان شخص ما يتعمد مضايقته",
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
                    "يجد صعوبة في فهم ما إذا كان موضع سخرية من الاخرين",
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
                      'يجد صعوبة في فهم السبب وراء عدم حب الناس له ( فهم لماذا يتضايق منه الاخرين)',
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
                      'يفشل في التنبؤ بالعواقب المحتملة للأحداث الاجتماعية',
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
                      'يبدو وكأنه لايفهم أن الأشخاص الاخرين لديهم أفكار ومشاعر مختلفة عنه',
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
                  Divider(),
                  Column(children: [
                    Text(
                      ' يبدو وكأنه لايفهم أ الشخص الاخر لا يعلم شيئا',
                    style: TextStyle(fontSize: 18),
                  ),
                  RadioListTile(
                    title: Text("ابدا"),
                    value: "0",
                    groupValue: selectedAnswers[8],
                    onChanged: (value) {
                      setState(() {
                        selectedAnswers[8] = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("احيانا"),
                    value: "1",
                    groupValue: selectedAnswers[8],
                    onChanged: (value) {
                      setState(() {
                        selectedAnswers[8] = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("كثيرا"),
                    value: "2",
                    groupValue: selectedAnswers[8],
                    onChanged: (value) {
                      setState(() {
                        selectedAnswers[8] = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("كثيرا جدا"),
                    value: "3",
                    groupValue: selectedAnswers[8],
                    onChanged: (value) {
                      setState(() {
                        selectedAnswers[8] = value.toString();
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
                  'form4',
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                onPressed:submitForm
              ),
         ),
       
        ],
      ),)
    ));
  }
}
