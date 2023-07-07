import 'package:flutter/material.dart';

import '../P_API/exam_1_map.dart';
import '../P_API/login_function.dart';

class adaptivePage extends StatefulWidget {
  @override
  State<adaptivePage> createState() => _adaptivePageState();
}

class _adaptivePageState extends State<adaptivePage> {

   GetExam? ex1=GetExam.fromJson(globalToken as Map<String, dynamic>);
    List<Questions?>? Qest;
    // Qest= ex1?.questions;

  List<String?> selectedAnswers = List<String?>.filled(13, null);


  bool areAllQuestionsAnswered() {
    return selectedAnswers.every((answer) => answer != null);
  }

  void submitForm() {
    if (areAllQuestionsAnswered()) {
      // Process the selected answers
      print('Selected Answers: $selectedAnswers');
      Navigator.pushNamed(context, 'form2');

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
        padding: const EdgeInsets.all(30),
       children: [Column(children: [
         const Text('السلوكيات التكرارية',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.cyan),),
         const Padding(padding: EdgeInsets.only(bottom: 15)),
         Text(
         Qest![1]!.Text!,
         // "يقضي أغلب وقته في أداء سلوكيات نمطية تكرارية اذا ما ترك وحيدا",
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
           ),
             const Divider(),

       ],),
        Column(children: [
         Text(
           Qest![2]!.Text!,
         // "ينشغل بمثير محدد وبشكل شاذ",
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
             title:const Text("كثيرا جدا"),
             value: "3",
             groupValue: selectedAnswers[1],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[1] = value.toString();
               });
             },
           ),
          const Divider(),
        ],),
        Column(children: [
         Text(
           Qest![3]!.Text!,
         // "يحملق في الأيدي والمواد أو الأشياء الموجودة في البيئة لمدة لا تقل عن خمس ثوان",
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
          const Divider(),
        ],),
       Column(children: [
         Text(
           Qest![4]!.Text!,
         // "يحرك بالأصابع سريعا أمام العين لمدة خمس ثوان أو أكثر ",
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
         const Divider(),

       ],),
       Column(children: [
         Text(
           Qest![5]!.Text!,
         // "يتحرك بسرعة واندفاع عند الانتقال من مكان الي الاخر ",
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
         const Divider(),
       ],),
           Column(children: [
             Text(
               Qest![6]!.Text!,
             // "يحرك بالايدي أو الاصابع امام او بجانب الوجه",
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
                 title:const Text("كثيرا"),
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
            const Divider(),

              ],),
          Column(children: [
             Text(
               Qest![7]!.Text!,
             // "يصدر نبرات صوت عالية (مثل ايييييييي) أو اي اصوات اخري علي سبيل الاثارة الذاتية",
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
             // "يستخدم الالعاب او الأشياء بطريقة غير لائقة كأن يجعل السيارة تدور ، يفك أجزاء الألعاب المتحركة ",
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
             Qest![9]!.Text!,
             // "يقوم بعمل الاشياء علي شكل طقوس متكررة",
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
         const Divider(),
         Column(children: [
           Text(
             Qest![10]!.Text!,
             // "ينخرط في اللعب بطريقة نمطية عندما يستخدم الالعاب او الأشياء",
             style: const TextStyle(fontSize: 18),
           ),

           RadioListTile(
             title: const Text("ابدا"),
             value: "0",
             groupValue: selectedAnswers[9],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[9] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("احيانا"),
             value: "1",
             groupValue: selectedAnswers[9],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[9] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("كثيرا"),
             value: "2",
             groupValue: selectedAnswers[9],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[9] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("كثيرا جدا"),
             value: "3",
             groupValue: selectedAnswers[9],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[9] = value.toString();
               });
             },
           ),
         ],),
         const Divider(),
         Column(children: [
           Text(
             Qest![11]!.Text!,
             // "يكرر أصوات غير مفهومة (هذيان – ثرثرة) مرارا وتكرارا",
             style: const TextStyle(fontSize: 18),
           ),

           RadioListTile(
             title: const Text("ابدا"),
             value: "0",
             groupValue: selectedAnswers[10],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[10] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("احيانا"),
             value: "1",
             groupValue: selectedAnswers[10],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[10] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("كثيرا"),
             value: "2",
             groupValue: selectedAnswers[10],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[10] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("كثيرا جدا"),
             value: "3",
             groupValue: selectedAnswers[10],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[10] = value.toString();
               });
             },
           ),
         ],),
         const Divider(),
         Column(children: [
           Text(
             Qest![12]!.Text!,
             // "يظهر اهتماما كبيرا وغير عادي بالجوانب الحسية لمواد اللعب أو أجزاء الجسم أو الأشياء",
             style: const TextStyle(fontSize: 18),
           ),

           RadioListTile(
             title: const Text("ابدا"),
             value: "0",
             groupValue: selectedAnswers[11],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[11] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("احيانا"),
             value: "1",
             groupValue: selectedAnswers[11],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[11] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("كثيرا"),
             value: "2",
             groupValue: selectedAnswers[11],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[11] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("كثيرا جدا"),
             value: "3",
             groupValue: selectedAnswers[11],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[11] = value.toString();
               });
             },
           ),
         ],),
         const Divider(),
         Column(children: [
           Text(
             Qest![13]!.Text!,
             // "يظهر سلوكيات قهرية لا يمكن مقاومتها",
             style: const TextStyle(fontSize: 18),
           ),

           RadioListTile(
             title: const Text("ابدا"),
             value: "0",
             groupValue: selectedAnswers[12],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[12] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("احيانا"),
             value: "1",
             groupValue: selectedAnswers[12],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[12] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("كثيرا"),
             value: "2",
             groupValue: selectedAnswers[12],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[12] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text("كثيرا جدا"),
             value: "3",
             groupValue: selectedAnswers[12],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[12] = value.toString();
               });
             },
           ),
         ],),
        
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
                  'التالي',
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                  onPressed: submitForm
                // },
              ),
         ),
       

        ],
      ),)
    ));
  }
}
