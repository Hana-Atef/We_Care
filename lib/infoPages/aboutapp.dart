import 'package:flutter/material.dart';

class aboutapp extends StatefulWidget {
  const aboutapp({super.key});

  @override
  State<aboutapp> createState() => _aboutappState();
}

class _aboutappState extends State<aboutapp> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      body: ListView(
        children: [
          const Image(image: AssetImage('assets/images/logo2.jpg'), fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const Text('ما هو تطبيق WE Care', style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black54),),
//////////////////////////////
                const SizedBox(height: 10,),
////////////////////////////////////
              const Text('''هو تطبيق الهدف الاساسي منه مساعدة أطفال التوحد في رحلتهم من بداية تشخيص الطفل باضطراب التوحد و معرفة شدة التوحد لدي الطفل باستخدام مقاييس مخصصه لذلك وصولا الي التدريبات الخاصة بتنمية مهارات طفل التوحد'''),
                const Text('''اضطراب طيف التوحد (ASD) هو اضطراب نمو عصبي معقد يتجلى في مجموعة متنوعة من الطرق. يمكن تحسين حياة الطفل المصاب باضطراب طيف التوحد وحياة والديهم اليومية بشكل كبير من خلال التشخيص المبكر والتدخل الطبي المناسب
لذلك استخدمنا في التطبيق التشخيص باستخدام الذكاء الاصطناعي  عن طريق صور الاطفال ويتم التشخيص بناء علي خصائص الوجه 
و تعزيز نموذج الذكاء الاصطناعي الذي يقوم بالتشخيص من خلال الصور بنموذج اخر يتم تدريبه علي اجابات بعض الاساله الموجوده في المقاييس التي تستخدم في تشخيص التوحد 

ويتيح ايضاً قياس شدة التوحد باستخدام مقاييس مثل مقياس جيليام و تحديد التدريبات المناسبه لحالة الطفل  التي ستؤدي الي تنمية مهاراته الحياتيه و سلوكياته
''')


              ],),
          )
        ],
      ),


    ));
  }
}