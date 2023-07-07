import 'package:flutter/material.dart';

import '../P_API/exam_3_map.dart';
import '../P_API/login_function.dart';

class socialPage extends StatefulWidget {
  @override
  State<socialPage> createState() => _socialPageState();
}

class _socialPageState extends State<socialPage> {

  List<String?> selectedAnswers = List<String?>.filled(9, null);
  GetExam3? ex1=GetExam3.fromJson(globalToken as Map<String, dynamic>);
  List<Questions3?>? Qest;

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
        child:  ListView(
            padding: const EdgeInsets.all(20),
           children: [Column(
           children: [
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Column(children: [
                    const Text('التواصل الاجتماعي',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.cyan)),
                    const Padding(padding: EdgeInsets.only(bottom: 15)),
                    Text(
                      Qest![1]!.Text!,
                    // "يستجيب بشكل غير لائق للمنبهات التي تتطلب روح الدعابة (على سبيل المثال: لا يضحك على النكات والرسوم المتحركة والقصص المضحكة",
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
                    // "يعاني من صعوبة في فهم النكات",
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
                    title:const Text("كثيرا"),
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
                    // "يعاني من صعوبة في فهم التعبيرات العامية",
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
                    // "يجد صعوبة في معرفة ما إذا كان شخص ما يتعمد مضايقته",
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
                      Qest![1]!.Text!,
                    // "يجد صعوبة في فهم ما إذا كان موضع سخرية من الاخرين",
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
                    Text(Qest![5]!.Text!,
                      // 'يجد صعوبة في فهم السبب وراء عدم حب الناس له ( فهم لماذا يتضايق منه الاخرين)',
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
                      Qest![6]!.Text!,
                      // 'يفشل في التنبؤ بالعواقب المحتملة للأحداث الاجتماعية',
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
                      Qest![7]!.Text!,
                      // 'يبدو وكأنه لايفهم أن الأشخاص الاخرين لديهم أفكار ومشاعر مختلفة عنه',
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
                  const Divider(),
                  Column(children: [
                    Text(
                      Qest![8]!.Text!,
                      // ' يبدو وكأنه لايفهم أ الشخص الاخر لا يعلم شيئا',
                    style: const TextStyle(fontSize: 18),
                  ),
                  RadioListTile(
                    title: const Text("ابدا"),
                    value: "0",
                    groupValue: selectedAnswers[8],
                    onChanged: (value) {
                      setState(() {
                        selectedAnswers[8] = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text("احيانا"),
                    value: "1",
                    groupValue: selectedAnswers[8],
                    onChanged: (value) {
                      setState(() {
                        selectedAnswers[8] = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text("كثيرا"),
                    value: "2",
                    groupValue: selectedAnswers[8],
                    onChanged: (value) {
                      setState(() {
                        selectedAnswers[8] = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text("كثيرا جدا"),
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
                  backgroundColor: const Color.fromARGB(255, 9, 25, 112),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(8),
                  textStyle: const TextStyle(fontSize: 30),
                ),
                child: const Text(
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
