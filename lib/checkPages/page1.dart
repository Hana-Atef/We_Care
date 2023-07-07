import 'package:flutter/material.dart';

class adaptivePage extends StatefulWidget {
  @override
  State<adaptivePage> createState() => _adaptivePageState();
}

class _adaptivePageState extends State<adaptivePage> {
  // String? Q1;
  // String? Q2;
  // String? Q3;
  // String? Q4;
  // String? Q5;
  // String? Q6;
  // String? Q7;
  // String? Q8;
  // String? Q9;
  // String? Q10;
  // String? Q11;
  // String? Q12;
  // String? Q13;

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
        padding: EdgeInsets.all(30),
       children: [Column(children: [
         Text('السلوكيات التكرارية',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.cyan),),
         Padding(padding: EdgeInsets.only(bottom: 15)),
         Text(
         "يقضي أغلب وقته في أداء سلوكيات نمطية تكرارية اذا ما ترك وحيدا",
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
           ),
             Divider(),

       ],),
        Column(children: [
         Text(
         "ينشغل بمثير محدد وبشكل شاذ",
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
             title:Text("كثيرا جدا"),
             value: "3",
             groupValue: selectedAnswers[1],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[1] = value.toString();
               });
             },
           ),
          Divider(),
        ],),
        Column(children: [
         Text(
         "يحملق في الأيدي والمواد أو الأشياء الموجودة في البيئة لمدة لا تقل عن خمس ثوان",
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
          Divider(),
        ],),
       Column(children: [
         Text(
         "يحرك بالأصابع سريعا أمام العين لمدة خمس ثوان أو أكثر ",
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
         Divider(),

       ],),
       Column(children: [
         Text(
         "يتحرك بسرعة واندفاع عند الانتقال من مكان الي الاخر ",
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
         Divider(),
       ],),
           Column(children: [
             Text(
             "يحرك بالايدي أو الاصابع امام او بجانب الوجه",
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
                 title:Text("كثيرا"),
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
            Divider(),

              ],),
          Column(children: [
             Text(
             "يصدر نبرات صوت عالية (مثل ايييييييي) أو اي اصوات اخري علي سبيل الاثارة الذاتية",
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
             "يستخدم الالعاب او الأشياء بطريقة غير لائقة كأن يجعل السيارة تدور ، يفك أجزاء الألعاب المتحركة ",
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
             "يقوم بعمل الاشياء علي شكل طقوس متكررة",
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
         Divider(),
         Column(children: [
           Text(
             "ينخرط في اللعب بطريقة نمطية عندما يستخدم الالعاب او الأشياء",
             style: TextStyle(fontSize: 18),
           ),

           RadioListTile(
             title: Text("ابدا"),
             value: "0",
             groupValue: selectedAnswers[9],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[9] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("احيانا"),
             value: "1",
             groupValue: selectedAnswers[9],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[9] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("كثيرا"),
             value: "2",
             groupValue: selectedAnswers[9],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[9] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("كثيرا جدا"),
             value: "3",
             groupValue: selectedAnswers[9],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[9] = value.toString();
               });
             },
           ),
         ],),
         Divider(),
         Column(children: [
           Text(
             "يكرر أصوات غير مفهومة (هذيان – ثرثرة) مرارا وتكرارا",
             style: TextStyle(fontSize: 18),
           ),

           RadioListTile(
             title: Text("ابدا"),
             value: "0",
             groupValue: selectedAnswers[10],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[10] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("احيانا"),
             value: "1",
             groupValue: selectedAnswers[10],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[10] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("كثيرا"),
             value: "2",
             groupValue: selectedAnswers[10],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[10] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("كثيرا جدا"),
             value: "3",
             groupValue: selectedAnswers[10],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[10] = value.toString();
               });
             },
           ),
         ],),
         Divider(),
         Column(children: [
           Text(
             "يظهر اهتماما كبيرا وغير عادي بالجوانب الحسية لمواد اللعب أو أجزاء الجسم أو الأشياء",
             style: TextStyle(fontSize: 18),
           ),

           RadioListTile(
             title: Text("ابدا"),
             value: "0",
             groupValue: selectedAnswers[11],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[11] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("احيانا"),
             value: "1",
             groupValue: selectedAnswers[11],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[11] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("كثيرا"),
             value: "2",
             groupValue: selectedAnswers[11],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[11] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("كثيرا جدا"),
             value: "3",
             groupValue: selectedAnswers[11],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[11] = value.toString();
               });
             },
           ),
         ],),
         Divider(),
         Column(children: [
           Text(
             "يظهر سلوكيات قهرية لا يمكن مقاومتها",
             style: TextStyle(fontSize: 18),
           ),

           RadioListTile(
             title: Text("ابدا"),
             value: "0",
             groupValue: selectedAnswers[12],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[12] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("احيانا"),
             value: "1",
             groupValue: selectedAnswers[12],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[12] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("كثيرا"),
             value: "2",
             groupValue: selectedAnswers[12],
             onChanged: (value) {
               setState(() {
                 selectedAnswers[12] = value.toString();
               });
             },
           ),
           RadioListTile(
             title: Text("كثيرا جدا"),
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
                  backgroundColor: Color.fromARGB(255, 9, 25, 112),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(8),
                  textStyle: TextStyle(fontSize: 30),
                ),
                child: Text(
                  'التالي',
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                // onPressed: () {
                //   onPressed: areAllQuestionsAnswered() ? () => Navigator.pushNamed(context, 'form2') : null,
                  // Navigator.pushNamed(context, 'form2');

                  onPressed: submitForm
                // },
              ),
         ),
       

        ],
      ),)
    ));
  }
}
