import 'package:flutter/material.dart';

class aboutauti extends StatefulWidget {
  const aboutauti({super.key});

  @override
  State<aboutauti> createState() => _aboutautiState();
}

class _aboutautiState extends State<aboutauti> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      body: ListView(
        children: [
          const Image(image: AssetImage('assets/images/4.jpg'), fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const Text('كيفية التعامل مع طفل التوحد', style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black54),),
//////////////////////////////
                const SizedBox(height: 10,),
////////////////////////////////////
              const Text('''بما يكون من الأسئلة التي تتبادر إلى ذهن الوالدين بمجرد اكتشاف إصابة طفلهما بالتوحد كيف أتعامل مع طفل التوحد؟ يعرف اضطراب طيف التوحد بأنه اضطراب عصبي نمائي يؤثر على سلوكيات الطفل، وقدرته على التعلم، وطريقة تواصله مع الآخرين؛ لذا يلزم معرفة كيفية التعامل مع طفل التوحد للتمكن من التواصل مع الطفل ومساعدته على تعلم القيام بمهام الحياة الأساسية''',
                style: TextStyle(fontSize: 25,color: Colors.blueGrey),),
                
                const Text('''يعد دور الوالدين في التعامل مع طفل التوحد أحد ركائز العلاج نظرًا لأن الطفل يقضي معظم الوقت معهم؛ لذا فإن تأهيل الوالدين لكيفية التعامل مع طفل التوحد يساهم في العلاج بجانب الرعاية الطبية والعلاج النفسي، وهناك أشياء بسيطة في معاملة الطفل قد تحدث فرقًا كبيرًا في تحسن حالته  تشمل أساليب التعامل مع الطفل التوحدي ما يلي:''',
                style: TextStyle(fontSize: 20),
                ),
                const Text('''عادة ما يتم تأديب أو عقاب الأطفال الطبيعيين عند ارتكابهم أخطاء أو التصرف بطريقة غير لائقة، ولكن يختلف الأمر مع الطفل المصاب بالتوحد، حيث أنه لا يستطيع التحكم في بعض سلوكياته، ومن هذه السلوكيات: ''',
                style: TextStyle(fontSize: 18),
                ),
                const Text('''
  الصراخ أو الصياح.
  ضرب الرأس.
  عض اليدين والأصابع.
  رفرفة اليدين أو تأرجحهما.
  الاعتداء على الآخرين بالعض، أو الركل، أو البصق.
  عدم التواصل البصري مع الآخرين''',
                style: TextStyle(fontSize: 15),),


              ],),
          )
        ],
      ),


    ));
  }
}