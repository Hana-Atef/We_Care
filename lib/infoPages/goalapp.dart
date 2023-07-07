import 'package:flutter/material.dart';

class goalapp extends StatefulWidget {
  const goalapp({super.key});

  @override
  State<goalapp> createState() => _goalappState();
}

class _goalappState extends State<goalapp> {
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
                const Text('ما هو هدف WE Care', style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black54),),
//////////////////////////////
                const SizedBox(height: 10,),
////////////////////////////////////
              const Text( 'التشخيص السريع للتوحد باستخدام الصور والمتابعة الدائمة لمرضى التوحد وإجراء الفحوصات التي يتم تطبيقها في المراكز من قبل أولياء الأمور',style: TextStyle(fontSize: 20,),),

              ],),
          )
        ],
      ),


    ));
  }
}