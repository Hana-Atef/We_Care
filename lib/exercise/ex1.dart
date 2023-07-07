import 'package:flutter/material.dart';

class tabletest extends StatefulWidget {
  const tabletest({super.key});

  @override
  State<tabletest> createState() => _tabletestState();
}

class _tabletestState extends State<tabletest> {
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: mdh,
        // decoration:const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/bg_ex.jpeg'),fit: BoxFit.cover),),
         child: Column(children: [
          Center(child: Container(
            padding: EdgeInsets.only(top: 35),
            child:const Text('انشطة برنامج لوفاس التعليمى لاطفال التوحد', style:  TextStyle(fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold),),
            )),
            const SizedBox(height: 10,),
            Container(
              padding:const EdgeInsets.all(8),
              decoration: BoxDecoration(color: Color.fromARGB(255, 150, 202, 245), borderRadius: BorderRadius.circular(15)),
              child:const Text('النموذج الاول : الانتباه و التقليد ' , style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
              ),
              SizedBox(height: 5,),
              SingleChildScrollView(
                child: Container(
                  // color: Colors.blue,
                  // height: 627,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                     Text('>>برنامج تقليد الحركات باستخدام الاشياء:', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 9, 25, 112)),),
                     Text('- ضع شيئان متمائلان على المنضدة و اجلس في مواجهة الطفل', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                     Text('- تأكد من انتباه الطفل ثم قدم له الامر "افعل هذا" فنفس الوقت تقوم أنت بتقديم نموذج للفعل بأحد الأشياء', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                     Text('- حث الطفل على أداء الحركة بالشيء الأخر ودعم استجابته', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                     Text('- قلل الحث تدريجيا حتى يُزول و دعم الاستجابات المختلفة التي تظهر بأقل مستوى من الحث', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),
                     const Text('- في النهاية دعم الأستجابات الصحيحة الغير محثوثة ', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color:Color.fromARGB(255, 35, 44, 90))),

                    SizedBox(height: 20,),
                     ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:const Color.fromRGBO(33, 150, 243, .8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      padding:const EdgeInsets.all(5),
                      textStyle:const TextStyle(fontSize: 30),
                    ),
                      onPressed: () {
                      Navigator.pushNamed(context, 'exercise_card');
                      // and submit result
                    },
                    child:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                          const Text(
                                'التالى',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          )),
                          SizedBox(height: 10,),
                                  ],),
                  ),
                ),
              )
             
        ],),
      ),
    ),
            );
  }

}